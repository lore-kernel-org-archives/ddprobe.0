Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D04286D71
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746729594; cv=none; b=qVsVyzlXdaKWWfPBKvOg76ofw4Cdo/UfZFUkwul42Cp5NIyLhJ2CNDM/86DdRXv4XY4O/NKIgLgLOGUidy8Y+bbYZL0MbpLl1ra8opY/+tqPn+frGOM5NINY0BXQm6sffncqGbEsj1IPxzPuC8huC4MP4Ni75Td47y92Axkwzvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746729594; c=relaxed/simple;
	bh=vhB/QO4F96mqFAx2LMP38h2atQnnNd70uvw0Hv/Yv8I=;
	h=To:Subject:From:Message-Id:Date; b=IUkGyrjjEfDL2NfDYxIfOwWsjhHxapHuyVi+pmxpO40Tkrgc9YboBLo1+utv31qr9Xv+ZgQJbrP0kY43VCeZWyjMejUtVVkHJXCSkHoGTXDpsj7QELOEwsNWXAC5ddS2GzNXYjQQXNKY1x0nT0ITCn7KMhmQZkI6Y2Ff6E8jzU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGGFHLT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGGFHLT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D3DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746729593;
	bh=vhB/QO4F96mqFAx2LMP38h2atQnnNd70uvw0Hv/Yv8I=;
	h=To:Subject:From:Date:From;
	b=uGGFHLT5njP12VrQ4xeRk5ER1xvtKiMofC4RhPDJOi+k6a5u/CkDRyKYK2qyNeXuw
	 A41Ing4LgJU7b4WxA1rrjXWFnlys1zS14bUU/pYZDhUCZQ/PiIsBAnZBaBwwiqVRpR
	 tXTK8UvMJ54m34Yv3BJ+3lcqHo+XskDTycQLIb0e7mwNbN/Wt/cyeBOvYEH3qry8Ib
	 opeTf67+QGoQrzc4NUK1MtBF+i7JU7fU91zqn2yDgBPcIoppb+rV3hJOtMO18JqonK
	 Mrl6ro657yj+U89vzEjfhr0UwdZPMKUKClnsZMbyFyYImgvh8tP9IHPHL08+peWQUf
	 o1QDvrUD/2lZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026AC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672959358.6162.6026996273335202363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec18ccf448b63afd59159a8febee3d17fe74c33193e5950128271fb4e534d8f
Date: Thu, 08 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746729593
