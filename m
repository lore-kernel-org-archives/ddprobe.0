Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304F12F5479
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762957794; cv=none; b=REK+T28biahMvOgqc9M86/bOm6yz4ZS1kZZURq2Rda0/zMxMOTFl9ucy2WeUQFvkZzTGe9kg9HbELEgacjuhWGPsSaldWTM5FvE7ijyA9xFemEzqNruBL+tUosRgSXLWjeI/kqErNFtepsNwfY5mZVX41xKXedYr3F1e5ALF2tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762957794; c=relaxed/simple;
	bh=Er6am5Y0nrXj34HmHrIJVb6TTiqv8hpyIljJv3xhP9U=;
	h=To:Subject:From:Message-Id:Date; b=Wz+9SkYj7tXSP+ZdKRNUd/4jvJFGsGhAyYH/zEZbzLOQZ2O4wGdr9kol/6n1nDLwh45X9h22za5kdMV4hSy+HMBbURK5nTGyTvoG4DBb9zz7QYihHWLKnv7N2kRHy/N+s6eCxA0Vq23FFVrQqNdqSSTwge6oLYkR/uJZ8ubx6Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXgFP0Oc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXgFP0Oc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A930CC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762957793;
	bh=Er6am5Y0nrXj34HmHrIJVb6TTiqv8hpyIljJv3xhP9U=;
	h=To:Subject:From:Date:From;
	b=mXgFP0OcERTVuz/3od1bUwQSp0i3F2WuHwbl0KI4XciKpAJSpQHx8iGqnrhe3KPht
	 zLWdJVRKvbIPSFHWM8O79U3ILpgs7uhUJESllu5Pa6wrfTNjldPmm70MfpWja3kcOG
	 3rxgB+gITOcoRWB8yBW448nF+CGROlubNK5cBp6He7vrzo6WX/R0p5cZYceZYfdfum
	 PVyxUUHbHybkgxKZEPGBAyK/yaqA9I8gHdZKyLbLi0dGs8nMJKviEb9TUtCk04rPO5
	 GVE+oD+V7lTiVRwT3wM7X3sBvsarUvwDW0FuFlR8P+QDccvWFJqRzgvTmYWM95vfJH
	 IXmP8rbLirZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BDCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295779358.19681.11918317006404389198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fd71937669dfce0cc6f9f8764111481254965c855f76a111472b3d448069cc
Date: Wed, 12 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762957793
