Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41542F3646
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752661793; cv=none; b=GHMLGOPVaxHEFBGPM4r7yjaET9GLd9mrwGynWxBrBc/ZW55aJ26k6AKRRnRcfGa2mKScKvolrFXB5N6MLpBzeT9LP1eiy+Qv2HSp8ZD4iqJWj4+khFnjMp8Nm//pXgm1YG9+OiTAvKyUHVlizN8I6KxiY6zNzuaKszbHdJzeX8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752661793; c=relaxed/simple;
	bh=SdFi0XaUYtbyE8iYIigTErQOptnVhBCUYmgc/GqnHU0=;
	h=To:Subject:From:Message-Id:Date; b=f7i6gtLsmXa7qEaCWmXaZzhsohJRdJw4SP2jCgCXdN95RcKBxkPPH+oTjH0iTP1hrYc6bBhn6w5FKcnQqX3gDlnfltnnXe9E5q2sN9x2oWUFrKas9txDk8JmhgA+0zXZu/v6Tx7ng5+F1M5+THOIv7Eb2Zpz4r3bUKumJVa/H8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxSOl/6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxSOl/6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E245C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752661793;
	bh=SdFi0XaUYtbyE8iYIigTErQOptnVhBCUYmgc/GqnHU0=;
	h=To:Subject:From:Date:From;
	b=YxSOl/6ojvwibp/XhinjNuZmOkUTE3qlaZm8JYCczZHk7MCy1Hzdyp1jWLzwppO9A
	 J6uovlvkKRI3Kq21wY06CyhoR1dNi5t7uYGgEdyqrRt6Hk9qrgBbuCs/mde/e+YUBz
	 //PyFjCO4lWY6n0Mr0rbw4Jzu++TNQPj/bYxDy/6Fyv1T5hjVB4vIN/YwvQtdL8IpM
	 JroDaLoHw4lqsxCrpvZuNv8uoTb11CavSTANkVW09fDU03F+7RJsLt+b5HK1mIOUon
	 iGJDqHOXvViAa1jafiG+/bBIK1o9ptF2UoHGycT1SkH9WtFbQLthgCtf8vkFcSxwUb
	 0ZPqAlNU7Fb7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F839C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266179358.21944.2278300927399288765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13ee083cacca781c6257575a6cf3317d2a8fa70f653d472c726388a6917e517
Date: Wed, 16 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752661793
