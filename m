Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5C724EAB2
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747900795; cv=none; b=UFTzVPGXML2iBHQtC9XqY7HRZzX406UM6zrkw5qtIyL9bJ+j1nSql9w0DtvVZEHV7c0Iqzvjs4oT53bI7Y6gb0lFDGi3Ue3tWFe8wR6jqJtrHg/gXaLnCwQBZuNqwkRFOxnQnMYw9/4z8Um/4XTW7zwnkaGhxnz4ifIYCzJkH9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747900795; c=relaxed/simple;
	bh=um40ht1DkpF/K3j4CyWtxIvUJZUkKp36/FDaTIiYgKE=;
	h=To:Subject:From:Message-Id:Date; b=DNQ+JGP3pb2p1PXs7+etDbOxV+bkpx11cikzL3kxR8LNuB0h1fdJ9OARHLtHzyTtYR3QvnVpeOZRHojh9bY/3zGfwAIyhUTrYGB5yIkPHxN58SogdCESIt8AyLJBZkCRLg4o0mt/ljA/hG5q/CFvPIYoYJOyBvrhEFvXL6SJiTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuHHAo8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuHHAo8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F74C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747900793;
	bh=um40ht1DkpF/K3j4CyWtxIvUJZUkKp36/FDaTIiYgKE=;
	h=To:Subject:From:Date:From;
	b=PuHHAo8uOHl1oW5A0ScF/jDAz0k0pi0P6f6EE6OT0ZrxzgZhZvStaV3TXoyA0LUbF
	 UzyiuKHRcFYlnGWZedmmFUU1EoMleGFoXNT4avxortx2b7+XhjrH/4/WSdlO2AFPrZ
	 /fwTOpsueMFrKkd33ulq0HQAdTi4az2LT5CJXoRWWpabAdF+oRAlodrmUGa0Ww3eBs
	 aRwA986Z0x08a1y/+4K93VQqq0HqvADm3kH/AgHmSV7LyII8nUw/pcY55Xg6MP2oHE
	 WkP8zZzF5vtE2vPyULfkN3h/YVsFTaFPM8uB181J634XhS4WHoz3PVTRLqwU90cfVa
	 mYHng9JkrIuoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE55C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790079357.8113.13183879846852214643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0833bde1255b86cd0abba99349f765ac07e1bd3a61cd4249cb75965107f1ec1
Date: Thu, 22 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747900793
