Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FB72D605
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710757697; cv=none; b=GCVHeyBsjo9ecw3ds3lXU+R84lANdr5uks0tiE4BFvc+t/r4/wTTg3GYsj/d2tbvxApH1a9Y+6fhWYvuOBBbZSkmLk0vYJY8vr2i2Ajf6lDDvz87/uQGqGg9601UeX0CgphJ13/9gNc4EZOKC3xuVmLPRXAr6tmLvl1U7tlZwds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710757697; c=relaxed/simple;
	bh=Mtmz0huJUelprQ75yOhgJec1WCeO2UQcBIob8WHQOX0=;
	h=To:Subject:From:Message-Id:Date; b=Wq+8iHtmAbTuyGd1pvDzS8RptoOuPVsc/zZsosxalZ29fVGEwb+7VVD1fvHV9CnPAHHCuA8o5ba1donjAd9fgF3FFcuEQTRdfTNJNwG0sOMxtS4X/PmAF+xIk0KjdJxbOczSep+APaSlo9xsGwZF9B1HKOGr37tfLejiMValXjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLw9Dvlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLw9Dvlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71222C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710757696;
	bh=Mtmz0huJUelprQ75yOhgJec1WCeO2UQcBIob8WHQOX0=;
	h=To:Subject:From:Date:From;
	b=NLw9DvlhA4yZ/36jzzIfpzaZ7kKYc2I+1jP96+3oHOK8NYxYv3NYIFp+fNrMyMwOQ
	 OW9bPNrLTZGj4g7JtbFxGN/jWVkAb9ObavE1U6r8eWpkwVVmCe0cVjjPnGvVtXH70G
	 QqvGgR1n/AIEOPoILO2ZYuTpsIFpSH5ZeP6vJhQRRlHhFkaaHkocaKVJs93YwMuv6F
	 /n60WKYRrK7XUjwcXC42cS3misnX4IBQLwHUX8oLYm1hP0N4otzubtRs0ViSojYu1R
	 fCNiOY2UHM3kFC04jJ6CXdIFZEopNNFvjo2X2qeVXUrz9+swZ82Gkk7RILyG8pVZ3K
	 Wh4A5qJta7tGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60033C54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171075769638.1726.16613647677119967796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234960a20cbbb5d7829544a44e8f4a7c1bf2436f7f8ee2303b26ac5ba4fb414f
Date: Mon, 18 Mar 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710757696
