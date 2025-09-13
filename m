Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3028C2566
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757729394; cv=none; b=LzW55CUzwQV4J36BIUOO0YXkm8/LsY0XS+czbVi8XYeI23TX2AreC7DCfea7Owo+Ml8K8/2JGR4uhlpKs4Qkd4XlExKgzjOJsOnsDLe0W8Wt2SafleS5Fu5VjIsO9zOpXCux8p9q3wmzT8C8IAOjVKEFUqUDNI9oiA8SAboDwqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757729394; c=relaxed/simple;
	bh=0dsRCuiucI9pDAwd0BoMUa4Zu5GRfXDSqJYXPbwiyz0=;
	h=To:Subject:From:Message-Id:Date; b=c9kCJbPaWLcYnmTiRm9uPbH2LhSKLipNGoCkJ8ILUZKBJtf5/7+sPo1kNUiMfEMt7wORyuTBuUtRxRZxV12alTpymAXvzOF9J/HTGymcEE+RcNV9XBiwGjQLmP8OAhoYWhEoRUbI3G7iuH/529p9LqG9fTQGtk3f7sunQQfyvYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1PSEzhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1PSEzhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC9C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757729393;
	bh=0dsRCuiucI9pDAwd0BoMUa4Zu5GRfXDSqJYXPbwiyz0=;
	h=To:Subject:From:Date:From;
	b=J1PSEzhAjGxS/MXtyiiGStrzuaARpldSzkVgr1nSV6aBNtXx11JxWQvSOSlKmiMTN
	 rgthdw5FuFWPlrhRcYkT3Kl192X5RXYgwaaCs4rJojlzLEaavaNxBy4LBwVBBb1aDh
	 1MSK0KWaXuQvo1BaSjA09e9H64VfVjWmPlgSS+N+4/PE7IqcBMRwTwu5AFWMKR35+r
	 HSgzqV5o5wMUI0nE38cLqflYzsADww/27e4A3KmygcSM222VriyJq2vX9o4Bzff5Cx
	 zS55aeNOtT1FXBQAsYELGXmom3OiBMYgukB7cQIC7E/DWRH/AqakSRXHSytdk8sn2a
	 tQ6UoqbljwKbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9572FCA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772939359.13254.9245726596470883578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bed6934c3b913769d16fb2e6cc106c05bf6c4e9a8957bbf00a2f25bcc3db0f6
Date: Sat, 13 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757729393
