Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6764313B792
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716807863; cv=none; b=GGWMO/4CjQ8stmc+g4XI87PbY2gRg8CtTX4+Beh3iqbvXNb2B9URdtTinkDqMZjCmAYctUcUbRCcy7UclP9f9r0P0G8jZI5wVL9MzPg6SL+WkI3F6f5Yx65CsYk99Bq84dkUqnKgvpE9Ht5eGtO+Sz7xpGBbvHYcppILDA/9ofU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716807863; c=relaxed/simple;
	bh=Vd1lWUPtWFJxkhp89X72VWMxtZ2/QWKWFoibnaTl1sk=;
	h=To:Subject:From:Message-Id:Date; b=YoRxz/XJgMnU/ZUyiJhRYkBw7zy8MOJrKFriDswgxWGZjcr4rA7d7FFbonXXUO+RcjNbKCSDJvQ/zAHvyPOAf9TavvL4Dc8whfRYLoaB+2Anbd5nfowNNWbqALIHvaezCfqqJ+3oyOnwdnjdSsN1127o9d3bD3yk7xBc9bV/MaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRXGS600; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRXGS600"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC433C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716807863;
	bh=Vd1lWUPtWFJxkhp89X72VWMxtZ2/QWKWFoibnaTl1sk=;
	h=To:Subject:From:Date:From;
	b=rRXGS600wl7FHM75epRPWhz2snsPZlEEDrHX+LGv065cBy53d1sq8KFaWtb7+QUND
	 j+PRyCGQLKeOixnkhzJ0gnQIav7p94bkhEh4bTGmHW21WQb9BQZQPbT7kWkc0DP1SF
	 Ur3fMYJ2kWWFyzCD4s0ovzSgVAOGCXpJvKnTp8lB7EMHciMJmVa/Sa5VtTXnjceyYj
	 YX7dTyAr/k8lz3mrAWTKO0XIkuy+djOu6lVXY/UjIT55K/o3I3V0o8q0eo4E91oIwF
	 NGaBth0UUZc2QDqdYCUIb9ajAoWIuCE9YMncdUVjWCV7qhXCu9Ass5COiVQn1sgVTf
	 C594uelZOdG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A83C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680786286.11810.10671775606732763819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc6527ffab2c37eb0c96e8f5f1192e932394cb5e56b837e2cea30ed04b9b732
Date: Mon, 27 May 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716807862
