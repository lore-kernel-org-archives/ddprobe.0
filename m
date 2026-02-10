Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8482EB847
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770738233; cv=none; b=c1BeRHOepyX1PD7t6TMWqvOffxVisaA2yV6JxdNLLvyZWsrEcgJCyF58IHsE9dNnq5J+Qpb6++5jBlF0+KF9kWINJpPqsvSDDTVgsymXQDxbPFh9ZTH2AK579/HnyW9WPn3UkklHOZxYwgrwc6fKUlsgbbUcisOs2dhliwLiviE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770738233; c=relaxed/simple;
	bh=E1vmHS56kgujhQ2a9OcWw0pB+oOSiqE33GlzxONaZ1g=;
	h=To:Subject:From:Message-Id:Date; b=VLRbkBIJsJJBzFKFjPa8PBjGNSnJ3C1ZQxAZFJ1kzOmGmC7Zof6Zkk8BVXK4kLeTI3OyAyuJia+UEJ+8TldBsZ9gDUcW0uz4fKZ2NHKWFvCaEj/HDr0W7LIvq5sNdEbj5npSDuNW+NBFPScbqvdelxc54RlS5cbEYpXxiGJy4Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPMHjh/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPMHjh/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92E4C19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770738233;
	bh=E1vmHS56kgujhQ2a9OcWw0pB+oOSiqE33GlzxONaZ1g=;
	h=To:Subject:From:Date:From;
	b=NPMHjh/oshvGWbURzU8lrTWHxFBx9f8LlBmhL1pNeAWNFjcUPADQ/kpu7OFsVlOCR
	 IT0Ow+HPIjIVcV1EThLUAAccsgMm5bk2LK7AgkUXnAdDEN/ANLACc9YUFBDeiCEJS5
	 jyqjUJbPl7zJWot8lZdCZvZZXpqZk7SASFO/VrkftXUglpVP8NT2sVWRUw6cdAaYuz
	 lvPFJl76Fai4d0y2nCk4uOP+jT8S3YG6RgrTSCehrp5VE+yYNmVrNshELhWiUH7Qr5
	 HqPAjrBNEWIWBpitxCwCIQe/O+kjCGDgxFGGdx2/cjnPxU6L3HQ5sQHiKSfmFl56mj
	 4f33WC+PeNB6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A4BEA8130
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073823359.7414.2976178240780791858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3912b2153657632fc61a52de5930ce0cf9abd91a64eb0febdd5617081e470605
Date: Tue, 10 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770738233
