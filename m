Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF611E9B1A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766807633; cv=none; b=ENGc0W3+QWxb3Ekuu0zNSJJrkVcGGffR+wYcP6gXIBNc8ucaJf+QsR51QaJqLIIgtKZc1dG4VsCNVY1W5pwMV03rbIR6JRG6V41WOxszZPHPgYZHQlXGqiIhfkZ0l6fH7ww9sc5riqTI/nrO2uY4Zdv+8oV7cG52lK0UHjx64b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766807633; c=relaxed/simple;
	bh=/sr+eAMO673Jdgwoxj+BvYc8pAHP8rnQeCbi9DpGgT8=;
	h=To:Subject:From:Message-Id:Date; b=E6cm4Dwj7IjWAT/9NzMZX13hGNGcy9uJsYS1Kwbd8G2bSj1FRGARZa7i2DrUSv/q1PW4Isyb0NgimRH3F2NocIlyaVWvEUNcsWKT7D8XddLIXCqeemWF2u06KhqOLUVXwNFkRR7Czl2eJwYSgXMRr493tSYlSNKRdYdqyR8M+60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UF0VIFGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UF0VIFGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB79C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766807633;
	bh=/sr+eAMO673Jdgwoxj+BvYc8pAHP8rnQeCbi9DpGgT8=;
	h=To:Subject:From:Date:From;
	b=UF0VIFGrBbadVqK8powzb7+5IRZ6maH+CpfXi78LlJr6BJd/V8JZU47cN7gEtLufF
	 kMvSm7YLljDXTdgWOxVjyFAO7hZ45xtpi7n2tdjS7EdYocdsPAH7o9OI0sI4mKukyH
	 d9it00TNEOFUad3s1dBGb1hgSkUr3gx4vPv+yAIkpDitERA24TKhtt8XMLM1ejA3g7
	 g6ZKAvfukqaF/fgmoi5OtNOvUKyEnhHTg1MF0CNywyfnYHBo5uvG9hNCB/w2StlqKi
	 sqovUrpmx6Jn14ikZtrhvPBvi7TzNJheON56iB2c4qGb4Y1BgUTZsCcv77TBE7CCV4
	 8UfP4MWb6uYhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94373E8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176680763358.18360.9465495601010520586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a34604c7b4e2462917e4f52dcbe1ad3e49ac164ad4208b0015e9f9f9a0d5602
Date: Sat, 27 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766807633
