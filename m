Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B9F846F
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738787154; cv=none; b=of+xnESbcMN4t0Qk8RMfnwzeNDgfXQ0Tliizv+KA/cPOS/+MWFionuoMrgNUTma3f+TfDgy0zJ5wvwxEl3s5OS6yE5TTKKaqEvWmDf9yG85XGWQZiTPiCHVMSiT7D7jg0bOU7YFH5xOJeMCqeR9qdBJ3gmfhFooRH7KgxXsa5RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738787154; c=relaxed/simple;
	bh=MnyVLREQd2sJec9N81BLuAxKzVem/rUuMGtLym2gGAg=;
	h=To:Subject:From:Message-Id:Date; b=fqnXoGSi7WNlKJhZd4/wvWqVHN4io3MOf2BpGOtyPg2A79vgCSNareAzwmVjxoOJZe7BjLrjDvCFdB6jMppggm+teKaqIW6250qZSRXRcuyqhQ3Vb5oVHp9VofRbPrN8Z7m1mO73EL0p7icHz+4qyegXM6mFg1AKLBDH3t66eV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRif1Qu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRif1Qu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA78C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738787153;
	bh=MnyVLREQd2sJec9N81BLuAxKzVem/rUuMGtLym2gGAg=;
	h=To:Subject:From:Date:From;
	b=gRif1Qu4mt9VgBf35fETCkUFw8dDH6RlaBMQ6l3ew7LjIrjZ7w7QlD5FuO6LRjdJu
	 pwLcBv0U9rmBiZSnsknfHCY6I2/5Mkj8ghQC0aQlM3MYG0zS//jKicyXLrNsU/PJGM
	 Y2Afw4RncjzmyltjzPl9J2ynvf5eCk9Va4IIL1/9xAHA78JPAwqkrN1Bv5rZRg0Qdv
	 clVzRkYo5rUUQB9wnMn1PNhavZa38ZVTF0mmSza6mQeXnSMZrGhi3+yR7hUZXRUoJl
	 JrMOvClj2UJA+vjZgh0bnV9+mk6o1KFvjI+pLwu38siigq/RMC63qHOtwlauzm17HY
	 FbGoWPvpBfCyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965EBC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173878715358.1153.1194550070519095325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6617acdb915b07d85c8ca5b13253742aac96d872712191bc345d554af03044f
Date: Wed, 05 Feb 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738787153
