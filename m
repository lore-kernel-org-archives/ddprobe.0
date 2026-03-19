Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F783D8100
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773939893; cv=none; b=UWVoY2HzpNNbBAgCtM9loPPYk5dchN+BswtKR9jKnL7cfKMivBc2eBocQmA44Z8nCDdQE8IFH95TSzca0hO4FoE623nyOlm7Kl3vlpDMYvfgBJHw2wXY9D9NlD85C/No1uKVoAWqOUPk3DXGhw4l7ZABsrFKgAoeLobFptFVebg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773939893; c=relaxed/simple;
	bh=1CtgOSuZGHQ6xeaRlQnCIM4uAD9DU//gbA0vGetQuNQ=;
	h=To:Subject:From:Message-Id:Date; b=T/yjz9Bjw75oVnLDHPIeVBHyDzr1o2AjxYi4uTO7Y8SEdPkO86ZSb/2XgpD16Im1Wixlv6C0bTyunvvkDjmL0TKaJaeIogqtLTJT76ejRiwyCnJfMQ4R5vhZWwp5wcUGG81dxtvCC43o7Ic+K4mQag4X5sNtNe+1idmUF17voms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kkf9Tsjv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kkf9Tsjv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F163C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773939893;
	bh=1CtgOSuZGHQ6xeaRlQnCIM4uAD9DU//gbA0vGetQuNQ=;
	h=To:Subject:From:Date:From;
	b=Kkf9TsjvM6TkcjzfgjfMVlgWes9OH8t56X6DUgPCn0PRs2UMiev1ZBFrfEjOEWdwT
	 Hxlrwqjh6jSabVyeeTvZf1kgLLlolJUD5MZT48uhUgJ43m0OqhAyyx0T6H+oAvwpmC
	 zePyVYWhzZk0b0NXPAoMQTg+ff/PY95LBNii0gXo/rZX4vQ73u0m4RZ8pj92DuJN1q
	 1CYJxxo54OCbw7LTyogwhx1fFJHHRz8bU1b4fS8BSZNAnTtao/3Tex4Z7pZx5LQKZ5
	 pcBYMCs4vnBlk6VYr8zICoBrJ+y+vCuGD40l8ycYxR4oHRkxMIhZLkGn6GDY3I4MsT
	 S9Yy9n4KQ1xtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC401090257
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393989358.17360.10830437799463894278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f05cfaf4202c46f9ab9b87acb380f0d3f18e5d5456f57d339130d23a3310bb2
Date: Thu, 19 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773939893
