Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFCC299920
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789215034; cv=none; b=jJaszHAtkpoBSQX0QGyHDFfl4YffQE2R6ke9QkJvCdS7ywitZFemaEDhxW/YtdtoTbhrVsyPGiDDryzrK8nBusOwWIzdaEsO5qNlHXFOUpFj4EGNJ6l3u0wFOU1QTCciB4UkSv+4/vTB2Bt39UUEVv2XjvWDsR+XQeQih8fbmTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789215034; c=relaxed/simple;
	bh=dLGsCRqBquCp9kxLM+3TGaKIzXoXO4O5XpSA9nErbdE=;
	h=To:Subject:From:Message-Id:Date; b=trJmKM83XJjNmtQz3qqs4vFyThlsfhH2QC9Bw4O2S3iOEUk7SbcGUhWRUScMV4D8gbvvG88AjD39EuMUSwL1f8HtAoc0ZXp4sL8kDY9QFTW9PlFbvAWf0Jb6DtEbM8bUuKuEjxlm8TSB/q1nbW4oSjJUgq1jC3C1Lzqfsrwr63c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hatIDXwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hatIDXwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35B5C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789215033;
	bh=dLGsCRqBquCp9kxLM+3TGaKIzXoXO4O5XpSA9nErbdE=;
	h=To:Subject:From:Date:From;
	b=hatIDXwNKymo6CC93lDAIyf1HuB9cazqpXDUr6Q7Mulci7U2Yw2TcXFUMlSp6FRoD
	 E/uZJIJDALUo/sh8A3xzmrzUSVVdXPwIo9wDvuiwnHLJm5kco46nCdnHsI9naFZN72
	 ZzXvAENZg5dZRngS/ArLhEkLjcC8YGUB/sSMjUH//jsEbNe43XzHfWu4tvGH9xD67j
	 +hvjMTIciz3sZ9flMP+4GBS197oqZsjVlVDe1zZFv1gZN4XLVKI3gdKzBfQJX+Mvwh
	 6aa94mpwZRy/A55/S3ySfFm7bhKjyOU2j7U0xnqvGepK39qDuAJ6+iKb+UGEI7y9RK
	 p7GmG4bHixtzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2E7C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921503368.3185.11340698223637151918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcc40d133f69e2d0c56826691cb929dec01076a78e231a1218cf30fd621c5352
Date: Sat, 12 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789215033
