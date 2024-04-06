Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016A42CAB
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712374697; cv=none; b=sdCcMgy/zSgv4LF9c+iEHeYZ2BNeyJSurRXONCkPjjjCu3/0GkdcF+2vn/ZInz+MxFBVZGwBKT2LWQIf2gQYiqluJ8eDEBjmZfuruUh9SB4leu+6dL6vP5UwoLjNNHB3z8ppOM+egnltnyOXdzt9s2vAdQBfSRdWxGi4htz+oLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712374697; c=relaxed/simple;
	bh=Eu/Q9LMyt6Gl2b5mUvyzRVuqaM5wJIbVXBCKxkBNwpI=;
	h=To:Subject:From:Message-Id:Date; b=b8qIJuvxe5ct2ZHXhueoNJbYznAQBvKhaANfOMu816+V/625AU5Ghh6Z7vOY2eDMGyS+XKtQp9y8/L0yVGG5h0zVsJZbBS8sgOu7LoemkKFfirQJpZ6/JJmICARTXOo+0KsR+CpCW/XOI/sCPnsHc8XXtV3iamimGc/5PoiMaU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhndlTi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhndlTi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C995C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712374696;
	bh=Eu/Q9LMyt6Gl2b5mUvyzRVuqaM5wJIbVXBCKxkBNwpI=;
	h=To:Subject:From:Date:From;
	b=jhndlTi/oPGRSLfZwd0X1WOmoW2+1Mdzm6HLmcY1RzMl5QNwLWtOeUlEf29pqwwkv
	 FRH+GKsyMafa4DSZlj26uqj2+Js4AUCmnfM2ImkHJO32fgHJml37zfc4Qy3VadaKpD
	 eoZTLHLw49QngzQ+g0TsuowOejIUBcBddUcRKuAa5+CwfZ8X8IIhz7bU7EnZnG6wUV
	 zmQ4qt0WzspXx18M9m9ZVUUgjbl1qmR9AwlcCL1Vt4UIYRduJvq/UDhszdlis2UD4f
	 fYYA8jIqw0q0tmgqZFwPN2EsPypQardCzJKFg7I0wUtKQI/kI5wkqHpiGKn66TvhLH
	 bsd5LTBxJRt6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A722CD128A
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171237469640.21383.10953316927355679431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503f1c6a291f074945f6789dcc8fa087c2b971d0da41cb7230909b56627dbe6e
Date: Sat, 06 Apr 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712374696
