Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3857622A4CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747363194; cv=none; b=Mjr3kvEsTU0PWKsWHumBgFqOu7FJg4xz6ZvhdUFuL0A6qKPuOacT7SHEwbfvf9qhkHChjldK/5DyVG4Ko8lTTgMg7MbUCslwQaHttAaipDKN/8fTfDN+6LURQLEh/RufgzNSpgvx3k0XDWebZ4wB2UImXsVO7FsLzMtlD2VbnVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747363194; c=relaxed/simple;
	bh=EpV/v41DIVPYJ2VE9NCu9zPad2VbYiz8vC18CrA7PkI=;
	h=To:Subject:From:Message-Id:Date; b=O7TuXfFKF5ztJ8DEJvkjTN50oeCT+TckcrPYmXb9dd9j+IzOdwG0SLwSOhs+0a+HbHn5tr2J/HaVxeyNqsf0dJ1+s2LfIGIo04bnmKUWkurwUrFb+Il8k70hpfPmUmrAMo5+0BWaxwrpWB2TGo71Xs5ahMG7qLSnD+/cTgkTJzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/NfMu7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/NfMu7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747363193;
	bh=EpV/v41DIVPYJ2VE9NCu9zPad2VbYiz8vC18CrA7PkI=;
	h=To:Subject:From:Date:From;
	b=L/NfMu7i7bOfwdjN+gBv8smZHsTlNPo8ZB7y3S1Qal4EFJh5hwe6HGokjG/l+zTaI
	 jDBVTjCydh1voVwTmdkivMlfTGgHkGN8sO8VWvmpFUdl2KV6wad0xLf5jXDoyPFrwZ
	 wf9JgGo8Zd+NMIz5i9XZ0vVauYvbrqr8wd3EIwzRZ9DYAxOYNqJ+vuynuyEfknMRzp
	 eJPrWHmxd3n7it5dzv16fnsqj0ggS0YTkO1CjpRoVK1QRah1zLGf+62dR02DXB2JvX
	 mhxatFfzEgDLacdxD7S+qu20p8c382dPcCxIE5ukIl8vh75OfsqzWtBI0vdOLPdAHa
	 wMypAMF3Qsu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189EC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736319357.28840.2833058536029424259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d858066036e520fa6834785008677219699a94a23fba25cb689ba6d859ceb7
Date: Fri, 16 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747363193
