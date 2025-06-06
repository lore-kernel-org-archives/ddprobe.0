Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F5B288CB6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749228594; cv=none; b=UATkxSMzO6qR4oVJGzrsg0PL+wPWnjvPrQbpvMiec5/SLdT7px2ioT90bh4iCSA0RksxVTHAQypg7ABLLv5Z8NRPhEYWbCkrDbujA0rGD/xfhcVyfWyDCT9diT0GPIjKr+/zmqZ+oI13EY3B5dP13TLAkO8Kx+b309+2kdX1qtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749228594; c=relaxed/simple;
	bh=wgsZgNOUWsaRAJaz2+g+mSbKysUl2qEyywqE7YYEAG4=;
	h=To:Subject:From:Message-Id:Date; b=Yy9/c8niJyNChqn8Z2/8lsTr3sVJUXUlykLJxOLm8T/x7AB/6tjBa9eSdtiYJMSklxybWW4pLcfV83AhesJrM+zxSQExGDT2qdy4+n0Q6hnLXkSn1n1AzvZUDK9eKEVF4gRJO2otHsdJMXWsHucSfNI2wTNS78MBA/07+AkRdwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd0KJ5+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd0KJ5+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B6C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749228593;
	bh=wgsZgNOUWsaRAJaz2+g+mSbKysUl2qEyywqE7YYEAG4=;
	h=To:Subject:From:Date:From;
	b=Nd0KJ5+XCLhrlh8A8DOcf2pUXLssXhmNRJxr8+Ab9+OD7F1/D1zRFeF/RECEwgY9/
	 ZkFyUnypN4Rj9PFg6jb5FrFtbZ1wZHhnO3fW220djxyrYStt7xyj2NaVmTvx5eeiWL
	 Q/z06dSvVgEJ44u+XG74DtkQcjDezsD7889R5topgg5kruIa0rhV4vJT8gjium6nUo
	 6+0+oEiPt3+5kJjr7vY+hHlV0Hn9x8w/s+zxX1HjeFF8WzzHGkUugf1sOZ11x+vdx6
	 xhKz/VYwnkp2ncF+SYp0LaCH8HnHEz33kh8cfiCCW24zi4WLbOtgXdIivkTZ6UcjQQ
	 TFZ19dgB8/AWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC2C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922859358.2899.12165178390644181589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41f647778afadad24e2f5153ec50a6624cb007f19c3d3e8f9c09c510c93bc87
Date: Fri, 06 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749228593
