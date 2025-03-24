Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4831D11CBA
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742846394; cv=none; b=fFsEUpluQ49JKOLbWOX7ocAbp4xN6/5LuuckU8oDsE7sgKvOkuNl/owd8oW0WkF5yI8hyUO/pfDHlpw8+BgFlwtOL5jTypY/lkcTvm5+6y/SMpD6A+EBA9DAakoxV5GRbqL+vnJH3w4+KNDKHwf/fDE8L79WbuPwkmLqiqpXkso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742846394; c=relaxed/simple;
	bh=BPHB95D9T3jK0E/PJ35hNFdykKHmk6Wq6NYHPm/JYUA=;
	h=To:Subject:From:Message-Id:Date; b=D9ibpjxz+BX2j9oPy3gYr5/EIzTR/WW4pPKc7GZacd4BHOhbdM/Y0m7/Dw/yYAxvL38zskZw+tiCtZuXG2LCH9QXc07GfWDvOEYrVUMWwNclxHEMbn+5aChAB8VrvcmL4S3gTRcNva/4sAyDiIn3iqCZKCyVCcNv/9X/wHdZxoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8SQatYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8SQatYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8345C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742846393;
	bh=BPHB95D9T3jK0E/PJ35hNFdykKHmk6Wq6NYHPm/JYUA=;
	h=To:Subject:From:Date:From;
	b=G8SQatYg5bPBVZblbP+jOuXWv7rq9GpchmwcMIED+HerIjPXMz8HDAwJXDvNsuGv7
	 SjbH+SNOM2nHE46MlyrjgoMpFJVjATBsp2UGkSNUyhR+IxYv7aNwQr0N2cevIT4R7F
	 LB9DgCLbycGTuLk45Y6bnxgDxNvY7fD0xtqdcGjvyTqHzCL6qalSsqzn6/1x5FhH1H
	 pHJDjkYRLIJyfDjlxNZNt8TIa4ym8FmzzbfrEJ66uj2rMWoAeCht9R/Mz5bfukdsF3
	 yZfXL6guwW1FQuPfV2PEvbeKYIZpDhHk7k69Cidw37XgoObxlSReOpEkQNasChd/NM
	 ePNRCI4Zn7ffg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F670C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284639362.13709.8841995636193801201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c7f9312acf1aca35ce8fae78519492ad165c52b6053c7f0c0c333675a55d5a
Date: Mon, 24 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742846393
