Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD0263D541
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710164896; cv=none; b=nqtqNZByWEIDkuWP3REc/Yjc479QCV35E8WBTrna0aLudGKQ8gcig0FZSWGB8MRAXORahTQH4mAZJrc0/+VedTm577ewgRULAFsn7ROpfuE+urqO4sM4Z2Tuq42FBabKuSJ3dPCD4usB+LjTNwFj+IwEyZMdLuigi+Ko8chIN0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710164896; c=relaxed/simple;
	bh=Qm56gqKbcv2cOo41jLr3QZ/yWDau2WZVLBbpk3NHuCI=;
	h=To:Subject:From:Message-Id:Date; b=dw7dW9R+CHcVmKNa8XLiByRPVt5lzxCTjwJTbl8LwwAmIC6vB+uUr72LuCgR3YAELNp8wjLGfNZsIduYN1WYM02Ul5No5QlrKlayvWm9dzYNloczP80pQVomeAXb52qx1ImSnAoMpgHxtoPW3mUQAcge3mpGK+47JGgJjfwq2Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTVHZ/F0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTVHZ/F0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5A9C433F1
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710164896;
	bh=Qm56gqKbcv2cOo41jLr3QZ/yWDau2WZVLBbpk3NHuCI=;
	h=To:Subject:From:Date:From;
	b=XTVHZ/F0iMYh9AcwEd+GKhlPwjEZGuixGsJQhTRdwQi4l/0r5fJ2MVNqQq3agkkn4
	 E+zN41vPSgTi55uePcFoCGAW85rkLeFgbAJX4d3Enj8RBQvO9u88E4GY/G1hkLrQ69
	 88lsoHLAsjyB3BRqvlZ3Dk/FEK3E+yaVYym9ObAfUF2QxSp4ycyZv35o1IGQbj7Ayh
	 kX4enpY9g0Qj0HudD1whdt8dwFx+9cmpXBgcbzCZeYh8UUmr/Nup4Hue3XFOnFAzs+
	 r8+SUxE/SMQE5QHgzH/Y7oBfukn8EQc2IMl4SnFg3G5y5D4JLsqvv1sRPvssx4CqU7
	 WRRVaSlM3b8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1BAC5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171016489637.11414.13120371922524885223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc7cd6685639faede20ca57c5cc8873523cd8cc8830f5f33cfeba0156415453
Date: Mon, 11 Mar 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710164896
