Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3752818B475
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744444794; cv=none; b=C9uF8ZmCAVO4d/DHlk+WYjPd99ieN4DEEeGbgNm48yi6+6weup9uDNtFyr7iPsQxELn0ExzNqnEDjMJSyiJ6GliUR84QCJOVSuQk46ny3+b6Ky+sjlYTHRRYSGRNZoVstn3ocvhzeSfUbslRsgH1lGZ2MRo7U+Ex6cZMqWPctug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744444794; c=relaxed/simple;
	bh=pIyBS3VO9hUGHfMtoD/1Psz3Szcl41Sdc11khCxirMM=;
	h=To:Subject:From:Message-Id:Date; b=bv4mg23Fm4aDVQ+tnd3KfR8UXhprTkRs6uiH++FBGuZf2vg5SZ+LIJvbPHJl315uYsDTcooAxyBSmwGM3EnAvMXQ/WzKouSrQx4NFOFYDVQrCiYAQmi+ASWtG6EnhOacCsZZLHkBdFPDH9VpcmG0DXSkonRmWf4CmWcplYZhp8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJrZzm3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJrZzm3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7586C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744444793;
	bh=pIyBS3VO9hUGHfMtoD/1Psz3Szcl41Sdc11khCxirMM=;
	h=To:Subject:From:Date:From;
	b=nJrZzm3H20s9hF5l9pvQcDGJPBpbUs8xrobJbNOTVXD2G+F2f2ofn4IAbaYtXRU9C
	 CCC2ykezEue+o256QcoO5CNN7QI8axqtgFRLsGlIGSfG2jZsSVEUm4KIMgWFm4Hv6W
	 Jri9d7W1gf/iWcpnFU7l2f5tQ3ro1KPXHVh2MW8sLgXNTHknlunCfx3beGhPCTxTOn
	 Su6q3pGWcVOPdFpORsx+HcFrvkmxRR+/+5NLCZd28uDTYVdIjFVM7NOkJ9vn3Mofla
	 rwYFA3oOTFH62lQXS8ZfmAiUexZWP1bLQujWNYiA+Hm5y88kAMl5Kr71u2TWs1cnNr
	 31it3Pj+/5Sqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C89C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444479358.4745.11306401726733384829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 940c1743200b70ee81fe45af9fd2713897f9b4e97cbc0b374017f9bffd5e7532
Date: Sat, 12 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744444793
