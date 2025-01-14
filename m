Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB5A35953
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736827554; cv=none; b=mysvfRnJweMK8aW4dPMDbSsML0PLuSlOQ/2lY1VlMKtHCPtZxRXPZPobvPfkxJROsliqdA8IAcy9gU28xGFdndwGXhuAB+9Ecdz4f17r9BZ5Qy1eOiy75CT8K9/DG9C+Mzpr8HsY80yTpvLEOTxnzBLM3iyRGskbAZsEC4Qk1M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736827554; c=relaxed/simple;
	bh=Nsf8evEgpSQnsv6aO5VxfJMxwmpSd2yQ+x2v4L41GBM=;
	h=To:Subject:From:Message-Id:Date; b=W5gw/3y8pHik5EaVCzZuz2tvv8HfhkZiOV8xsoQhx1qKBCJ+sjcDMpbO7TPqDh5Q2wKjkSbpbZUdVeFsl9m1fWuWHXpKOs4R4z//1P3HtR6Qkuwe1MuOdzG3qD6oJgnVzXLkvbTKJhni+nZanJ9prPZS+9JvahNfohMBdv6SYzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhBu3cmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhBu3cmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DB2C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736827553;
	bh=Nsf8evEgpSQnsv6aO5VxfJMxwmpSd2yQ+x2v4L41GBM=;
	h=To:Subject:From:Date:From;
	b=jhBu3cmItUJ7/Dc+KaW8qVJ2jqWhHT+3nZEb6l9j2K6ybCn88iwsQ56XvDb2JCPo1
	 18OiZp4I8iGb5My7gwR62eUy7Tk6G8Z8Y20oehnCLOMC+daWs9796b4oDXF1TEnn15
	 6ZjJxkP5APcgm7fCf378VwFFCdXCoXEYOm2btGOPXr1Fk6pm9RkTyTesvSuMBt3fNl
	 wY52VQXZ+LT/9WsP11ZfkbaQu7RPqJwdx+8yldaoQVKuTFXeDFhw5gL3/HRNfSptV4
	 eYk7YIOLdS/aWRbpk7pHL0TLhLymaN+agP8RuhszIpHDGrmtWyDDaP7yD2srCshwE2
	 UPcOlr0Bk7f4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFBE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682755357.1467.954532675310295016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef62ca3aec7cd11397a117682853ade4ce565ea32174e050b94efd055f994440
Date: Tue, 14 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736827553
