Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6623D7E761
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 18:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717181663; cv=none; b=m5CawT5E8xWANIyHf4YvVkm0hhLVhY5kqFl3NEd86THLHN/FqeklQUI+GdiLg/a9Rbz7kxRTzeJqUx2tVeqHHYKFfq3GQscaaX6UFcu8Gwcn0jZ1IEoP1NlUKhdPRGPhbetNqD7vzApvJMFPapEHSr8/L8gcOeIYmLOqOzO7Y+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717181663; c=relaxed/simple;
	bh=tVKSc6W/Q5m2VWecZUqXo4nFqf07+9XYs82EzVN4aFc=;
	h=To:Subject:From:Message-Id:Date; b=SbuDXGjqKhglI3045h8TZU86UDcI39+hQlObxTamrGCmAskiMpjLKqCnSoHl98NOgDwq8EBYc8Dgpq+1C362V6sBU7bWsmxiU5xbk4KwZO8U2oMyWN8zPgzL3rQYqXlS5HxouzpXM5ydbufgn6No+h86mPGTlEkl7+Vib/D2voM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4ybpSrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4ybpSrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14CEC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717181662;
	bh=tVKSc6W/Q5m2VWecZUqXo4nFqf07+9XYs82EzVN4aFc=;
	h=To:Subject:From:Date:From;
	b=Q4ybpSrVj88WvMYnZsRI6Vp2PfZHeoxb4EpgnzxF/3fz2ZL7X1GgfqauHORBVWYtz
	 E6sMb5s+vHHRyveY0cwqsQ/yYVfpmzqWDZxls14qDLGj7AsMfdO0DMeVJjge5T7FRb
	 +0LMAQnp6QZNdXwO5EKfhk8eiE/FUvsprZkeRSV5Tib1FI3jpYcJyJQi8yc3+2xSdl
	 T7WkrtOJEpokpe7uWhX9CwCkb5H5miwruZEFdmc6Yy0QdrdQ+7n2QeFliop6RA3mKE
	 PJcLGXaPJ+8ENuGRbO/iiRFHXvlySnhL32plMC5APduH+wr6unZ6PYNGK104GMFwn8
	 nC0FhtQs+tmeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C47DEC25B7C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718166279.9724.4053790393288754419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed04f8fea4fb8c30c7dae2aca0f38b96cea568a2d80908be3fee3e093d3d300
Date: Fri, 31 May 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717181662
