Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5CC40DFDC
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776370654; cv=none; b=kKdk7Y7U217q+1PKJsOcNvkD92CXAarSmxUML+BMDaELCUbxQ6VOQzMPqsDyUedKA4phhHYo8KC/kBSQZ+c+0/n6ermi4Dbzkug03jw4UAGoNZZvG2vYRKn916WEAgxn1c8vjJVWjvUHN3IhVj3ErpRKM+gCwIIpnF5ufwzZEG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776370654; c=relaxed/simple;
	bh=DuZXwKGo1OrlWVVg2Qsir1u7lhmPGczXNKuTlYeWMjE=;
	h=To:Subject:From:Message-Id:Date; b=O5fWAMpFL5XCUtr/kXN3RATqde2cNjqaDM2L8JRmokxEl/C2+lxnoqA84n7843SwPNf7CkZejjvOn6vo3Qh4uq4Rr0wZgKXL9Kd1/mvU4poWvXTVnVkYTMuDu0iCSytTw8L1T99KY2+7C1ZBqBnUIX8zHnqfImILKJprkhEyZrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f49V/WEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f49V/WEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9966C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776370653;
	bh=DuZXwKGo1OrlWVVg2Qsir1u7lhmPGczXNKuTlYeWMjE=;
	h=To:Subject:From:Date:From;
	b=f49V/WEqqLZ0y6oZie3Pg3g7AHO6jEHGBPEL99wuBjOGrp18em6DtSXabNgALjlES
	 B5VPBhUeMnLXb5OFOy2lDhFwcPsADnp/F9//Yuhblgt0eX3C+qdpraCfELZvUazPpw
	 2nrvknTIiHRPImfuRqD/kqny5fYXF8VItIHvBgbocLVs7y4RiL8npRqgLI8oW/Wk1v
	 Fh3c8znYRTBozsSozLWE0jknzQsW4vEhSDslJe5hVEhkrHnCNBOZxCK5mSoZa2eGk7
	 CCi+bGfRR+AKDmiT/vmm32hXZ31I8wWjRRDPB0wLZLZs5Ximzl3Q+VTR+sa8q3zHku
	 +Wouc3G+Ue4cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA30AF8D776
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637065368.10501.6490372261966011132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8c043b1ae5ac2d99653df2968c89ea436ef857625f6565c18042638bb7521a
Date: Thu, 16 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776370653
