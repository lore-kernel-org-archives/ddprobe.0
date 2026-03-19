Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CCE4317D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773891894; cv=none; b=E3TN9hUU8xnjryiDQwI4t9I2YM5I8AnAMPY9ip95dZfv1oP/vRX2/EkKqEafAArVqFN7GwIDsZUJN04u9dek3hD0rAVZu9/KJANbgvn9DLym1U1/URimYnXXqZkfhUWWMgMVr+QOAho3PH/NqkUlGwm9Ks8Fqo399vrKR4qrS/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773891894; c=relaxed/simple;
	bh=X8vJmhu4Jzsmy1xeVfMbM5eGsscYcjLRCgWUMsUmKQs=;
	h=To:Subject:From:Message-Id:Date; b=DfNCEPVn2G3ZNiSZ9LDh/4oSJ8qPAHr9PCCCi1mOB+VUWLprkDbGW/sTJJIh+6mmZJOdCLm51EpnyCXGdA6vlVvYhTZTbbWRP6dRCwBeCJhcSBY7P9fIX71UiKalI3Aa99JO0TkTdBTKFhXZLUR8P5Z+ZkVagOLq7j0NxyoacFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Msxvg1t1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Msxvg1t1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D5BC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773891893;
	bh=X8vJmhu4Jzsmy1xeVfMbM5eGsscYcjLRCgWUMsUmKQs=;
	h=To:Subject:From:Date:From;
	b=Msxvg1t11oRqcC/y3pRcWny/utvZWIw+040Rw87GBAf8injYC+J/QXWdvs8iuovah
	 894KcqDdQLsppaJehH5va/jSfTtAnLj5YJnFEdXnwhbRwzw0I99H1P5p8Ijav5c1ka
	 70IWnQlfGD7jBpEUsswq1wWTB8c1IQJkr7P7aSIR6wbjMZHVs2H1ZJUnMReZXHwlHl
	 7NT0cFVix3W5ifVr/akTo+L2pIKyqZUI/CKSIm71NT1ulEHRRuWxrWJnojcB+Wq0Cw
	 UJvUQRqaKWTD68JxHNyUx4lEvVuKUWWSxx1BhmeklmUG9e7eEHE6uuHP7m6jmGqOTr
	 1tsQY4iHz7TeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C681088E72
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389189358.21772.13536751400161710426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ca6ac3d1e4f250d975d50cc4bbef7c8d68263121453f46f521bb74f9d06e7a
Date: Thu, 19 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773891893
