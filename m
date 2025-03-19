Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB1C18C31
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742359194; cv=none; b=GJK0ZuXv0XSCh13a0QBefNjbZkA8/Q1gJ6EmQLw2z8dSOcusWaFTVl254r+TWTTn4u5BSFHZ6Hf+YbDfmfn1aHzkMeHeBbDrHcHsJtFsfjTq9D34Nn7l0LKf2p3MJlhmCLRLLujSDgLlIyQ1R/WxOoItVPdAYasOZJnG8/pJqSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742359194; c=relaxed/simple;
	bh=H5PHqljEVMRF9hxQ7p4rXY9kbJ2gElcncAoYY1mKOmw=;
	h=To:Subject:From:Message-Id:Date; b=RfToq9dcP+D7+/AmEoTCpfXlMQtFwOdAQUU4LIJmIV3bk+lyy1mniP65vYizPFmO5Xg7dkm51jdQI4sQyrAHS57RT4oawWmoohLDXVq/gSZ08oJ/CUh/uzOvvwu7ihY9g1FfyH0vrMzW+VWNJXWe4VsORCVOhD69zkaJNXnGZkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oPQoScs2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oPQoScs2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2672C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742359193;
	bh=H5PHqljEVMRF9hxQ7p4rXY9kbJ2gElcncAoYY1mKOmw=;
	h=To:Subject:From:Date:From;
	b=oPQoScs2YIdK8P/Guo8GeaY4uRR7fzvBV7kNB9TQ9XwGMTgFhTR5yzrtBBiIoN2RS
	 IZSXENsT/7WSvxwChvI6lhIBdyl0vA1KdaFlJ9bCiOTIR7BYS81nUHUL27VXj494ns
	 7jsJb1kusHxwSwWy4y8IhoRyEoCHIMutUim3dZdiL5QDv5/izp7k4LVvWfhxIzZCAD
	 POztVx4os12mKp2rMmJLOucIwy/2MHhmQ8M62tVc5i675VYOn3K8xjx+IEe/f0Vr7D
	 qmaRta6YmyF2O20DmHucrTAOgjZinHGk3+asXY0puHeS5uQ27yCm2tdGAKamF1id4d
	 Ido4xN9tZpADw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D5CC35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235919364.3601.15006186468405397754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9f5c738c1ccecc71aeb899e74f2642a9e867871871180f20678fab4914b887
Date: Wed, 19 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742359193
