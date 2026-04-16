Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D55F53E2762
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776352653; cv=none; b=eUmkSLUPYJdMI3ubBPBPyrcNS+cvAO8NNqiw+dJ/jf0IeOtVg1XqNmhAfcw7ZwTFyxSW9foHINMMf/Jx9VMHHV1lRuCvUXjiXbnKWDbgRjOtqN/4IYiRiP8pLcCrGUNpWg+Pd1pViJNsCKLJQZb9+jNfTBcPh6SpMDmpgd4S6zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776352653; c=relaxed/simple;
	bh=GmnimDZNU0DWBzviPePdP7OeMi+dv2U3Ju8BAVgnozI=;
	h=To:Subject:From:Message-Id:Date; b=haMeduRcfH/wRVk90zRY2rxl3VJT6u7BLfyrgtzgAMZe+X7DR573w/FfnxI/y0ocOMYoXb7A2HculBbSvfY8TcQASD1Xb9WD6aDUQSbvRa8RMif7lJno2sMbX9LvqcOC3UkShoIIijt4nE92gxpJif3xm+UCzZuvTZYmYPCjf6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vH9cZcEo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vH9cZcEo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EC9C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776352653;
	bh=GmnimDZNU0DWBzviPePdP7OeMi+dv2U3Ju8BAVgnozI=;
	h=To:Subject:From:Date:From;
	b=vH9cZcEo5nzpP7UXhMyP6Da7IWCcXJi6AW77Jw3TUpG19SWiJRhaHZ2hSesej66O8
	 rtuREE1hGQLFwMWRKL5tASrALMjlcsrqL1s/gY6cSaX2kMoEO+eQ02WYVuHuDzvAf3
	 Q8z6Qgsw2TAgPhnVakkcSLRiBbEr2WVuy1/aTg2QOYJSzq1gqePyNT3Zk3WigFsAif
	 17UV8dXsQZCFEvpzcEIaHYG5T2Jn3bxXRHYTynUqK2laDjTzxqYJFj/Yt1cLmkeuKV
	 knBTaAvAhgLnJ0ypjw2AKnUBiLJahJrEdeAFl8YXMlN1kkRJ3ed/MF3MCItqv2/XD5
	 vpXzu65Qy6Hwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB08F8D757
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177635265368.29869.51535608164380922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4d9a0c344e17d1f9c6463e0c842828819b7b46114530f39d478b025e12f1c2
Date: Thu, 16 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776352653
