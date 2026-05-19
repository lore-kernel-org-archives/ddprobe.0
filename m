Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4364921B5
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779208234; cv=none; b=RU73wa97e4hUcwx4g9rW6LpWMbXd+HdJQnxlm1pDsufiMAYSCm8s3qcXw0vQGrtVWpK3L2JsZScyZSv2l7gkmZ/7rL3eH6BYVqX6wOj2EUO6A/eZou6/XXiwSEbFhKNwqxR175SyvtooXnhQnvpO8Bj2AZ4aEdHbMWwo4NlW+QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779208234; c=relaxed/simple;
	bh=hDjXFhSvxFuJepGbtthM08i8yicTSh+tUf25dvbMg08=;
	h=To:Subject:From:Message-Id:Date; b=luKU/ILCKjxCWJ2vyRMKIZiB/MayKu08K2qQqAI6XdMZAbxPoA9xXd0Y20Pblw62SNcjEVnDwJJvgyV2Pb5HVJCp4v6Ky+qggVWoyDmgketIzsp8Duy5VV97M21m9RphRiQQVUDSY1p21xazMB+1nrs+9KedgZHkCAqjSK2Vpd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rihZKzPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rihZKzPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5D3C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779208233;
	bh=hDjXFhSvxFuJepGbtthM08i8yicTSh+tUf25dvbMg08=;
	h=To:Subject:From:Date:From;
	b=rihZKzPj3xQkdPC8ENSLhBTkPFA2kWD8KX3dMa3gmJBXy0WVAPJNBId8N4W8bS3l6
	 buSdGE/kzrVds2Rl6OIPvafvo2ujXDcSzlFPnWsrTF9lxN88TnGkjxjKUYWV775Zrz
	 2i6znO0kzRWkCY4Cdjmu50RD6/xHcNeL+35Ggyn4H9ueXXuwiAmmC82uYhw3yASwZj
	 8ha/DGqc3QuJpSBIcI+QEmzRfhxKVycdment2fyJFvy+jGDTMYhOc7XKEl8k7WtO9K
	 ocw+r3SSWuoz8YDrVucFjqnZE+X9ebCGAUK7RSEOYVgJHW1FtkKK8QuBxx94Sy8WVK
	 qGpF6B3wus8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB80CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177920823370.18540.5994503061276837741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd58d095294f6cba5d60dde82cdbefa79f3d4c451196bae2844580d23d037ff
Date: Tue, 19 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779208233
