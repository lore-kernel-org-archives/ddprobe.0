Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D8A1DFD8F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757711994; cv=none; b=oKBfLc5UjHVCYMbqr4No+9CENA/lPqbU5oistDQ0kALSK7ktxyGVYtLhoDOXnd7DYROqQHMksotdbSYLQS2unGKMWAj5URVP+YXXv0EJtIVotQzsDMmaTxigqxaIbKVlItFQRb+wrQHnoCJU3FgkGPWdvUz8snZhqSwUkBpdJGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757711994; c=relaxed/simple;
	bh=sptn3F/m3OZsy74ESTClur38g2oJUnCfTzZHx+BmeuU=;
	h=To:Subject:From:Message-Id:Date; b=LexfFxaX6H0eVAs2t3IyJF5hgeaLJ/VKPFPGzjJUGtXANGQYqdxG49eg/BMFIHVT8hrrW4EccxqoofJxO8ukcUwWitQVyyQOgF7+lhvqYR0HQUx8CmYMbstGgkzub8tUhvnXe1BLQbby0oZknC8fMRwwkVZuOniIdJKWJg/beVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUfVijjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUfVijjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1225C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757711993;
	bh=sptn3F/m3OZsy74ESTClur38g2oJUnCfTzZHx+BmeuU=;
	h=To:Subject:From:Date:From;
	b=qUfVijjCd5mDbP/x52YBqJJWrYTQWsQampgFKK47+2wE9kQVQkoRVyEQ3MTYlsaOj
	 VeEv1ZKLq6szroWLnDFJ3BVGsWpvMJVV/vJjBpYxaKPr9hGUyUWtNvHlupvVN/31TS
	 lc9GVz91fiWthQDAxTCvVXwibR4Qjm3P7w9UmakJn6WjHGQ0DBNF1okIM/WmST+aFs
	 +VdOK0eSvOaiW3SwEF+sELJ83lMYFAy36nM+t/wIh33IMeqRNFRaHVovBNCxBts+bo
	 Gy4limGN1WTdFl0856bqrSzY1WAgcD4Bcv3/HHqyrlTXLKbF3tLPOG9LDT4oiPMq1m
	 pAPJ29m/ENnRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F241CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771199357.20116.1776237356543902868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37581a2a605db46e2e490900b2333d64860e04a9e98fc438bb88dbc4cd613ec
Date: Fri, 12 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757711993
