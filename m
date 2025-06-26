Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411204204E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750934394; cv=none; b=Aajlo9FWK3UwHZZj9B9Qe/iUa31IRWO/EzN1Lw9N2s3bZn877EWIHzfmAIJqFiTrDpaXuYbLHnzU20Y2O093VRIPZqFCSyZDMwgIJ+l5Y2RfZHqUyFp1chRmcEEwkWPpnQYGgxEQ1vKopeY69JdzcoUkx6GGHbiI0gSd0auREkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750934394; c=relaxed/simple;
	bh=PNeBeO+4knzRAV+ZL93jNDnIeNc0LhLBdy/uNXZVm2o=;
	h=To:Subject:From:Message-Id:Date; b=S/gPiIGmBVvJlk+T5tmtmQjjKYrV4tmCkXOB3vX+74q/K5vWLT9KrgHhPzXFGLGh3/Xk9teAykK1jHzC9LWVQa4ud1W0ZiDrwIqKZsHGMPwNchCU4GMPw7lY2IJB4HUi0GpKd2HhT9FYkq7bUgwNiHmNzzMxIQrq4SydXwH/Nu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqV+LuB9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqV+LuB9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F49C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750934393;
	bh=PNeBeO+4knzRAV+ZL93jNDnIeNc0LhLBdy/uNXZVm2o=;
	h=To:Subject:From:Date:From;
	b=PqV+LuB95ipInvZcmNjoWDlie44k6DTlZsvAmaTQIr8x5We4O0iMG8rGZW9cv2TcG
	 MR+lJXKVYLssYTPvwCGpLglzCmubnNz7+BbymZs/2Hhou715ScbLiwuMw5wZHjUGTm
	 HRMS0SFF5C+nBR7zVbntNBpvLUPfCfRkaueGLGgblTp5eiR5BmOebE0KB9yKt0ZukS
	 mypagezHsSNpF0wlAhgxEuvVhpHFRxS+6uaxz6TQwMXu2mZk9q1aoYyYJPluLjPDAQ
	 Qpr9OV/2KJKKa7v/XKqgpf68MsV+eMv5k/l2R8zX95II7MCx6/HcqQi/PIhKB1kb8g
	 idZ/qAbRsE4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D6C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093439358.8022.5208422367422642553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6584d97b9e718df6313f97686aef3e5c63b7f0176066e8e8f150d2824bfda9
Date: Thu, 26 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750934393
