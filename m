Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FF8221547
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748869793; cv=none; b=tJ/Y0NT5pdVmnvhoYnwaTOAVfbhqk7EoxF/l9uuxDKld6w5o67u5RmsKqFz0EagcAtlyvrJfssbpH2RPPJ3PNtUitML1hgHLOhJbDzFrP/CXI9M03nXtXMkUClax/KJ0w9Bm0V/V07hVp5S6fftZRl2qA69hDkWQ4pRsdX6C5gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748869793; c=relaxed/simple;
	bh=oHiLuN1H1yiGc5DibAjy2Ow2ZAobGRVMmHCW2FOx5b4=;
	h=To:Subject:From:Message-Id:Date; b=pHCu5Hvko8hoRr6Jljw6Ttke3czH1sy7YwyXXfClOFLNPxt6wI+PO9Dxfuyged3UFVNk1NLwRNRmZEFKYUdCsRqtcveDvOhrTDyHh3mWWVWdil61MIl7eZKv7WacAHFRitUrJcXgMfZlzyUm4g0yME0tody/xiclEszayVqEszM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaWABKBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaWABKBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748869793;
	bh=oHiLuN1H1yiGc5DibAjy2Ow2ZAobGRVMmHCW2FOx5b4=;
	h=To:Subject:From:Date:From;
	b=YaWABKBLehGrKkxj1+7BbLakr4kLLbfRIAPeQyxeBKHhK5KaOn22siQIE2177vFmM
	 7+TCm8rBDFdOoYNSoCiRnGBWATnUmn6Z/fi8AkQ3zTDu0iXJ1NCYwygTPZQl6VZ94j
	 hMHfHsY1rfeOe7LDx2aPrizyhVedZaZG22Mi9E8u+hX0m90+saIYcaB5Uk4SeOLUAF
	 l7un4eUiFq7k4V+KuXMysjKW4bMMnEnMbYMgQxefeRk5OxKCP7vO5ziEt2qsC3OqXB
	 oep0zKxTZqeFJ5F0/t3kkWM8bD5nycvKj28JQoMaJqV573FYt7minO6mi4JhyhKsLG
	 2GkZCQGD2Z2Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AFEC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886979359.27562.4403228812426967702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8f91457605ce905b62f01263f05509d1db406924fa9e6ceb4a1237a4012cda
Date: Mon, 02 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748869793
