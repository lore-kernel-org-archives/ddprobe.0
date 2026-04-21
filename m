Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D63B95FD
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776766054; cv=none; b=Huh2oJ6SFAV01bijTW0Mlbo02DTJinA/W4mjzi+o0aWgXiuDPzSxqqUxPEyt+IWy2TrkueYoKet9MS+SY0ZZED9FBMnPbfimkAUzD3olsFBsEUjfvkq9tzo4BqQPaRu8y4n3zIXcAWiTm1fuwqKj/B5GcWNJeK43dpXVEgHAid4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776766054; c=relaxed/simple;
	bh=BVJ8w/uwqX0TEFQzovXYpjkHYDQkGgQUJA8X8Y/vJKE=;
	h=To:Subject:From:Message-Id:Date; b=NmJsR4FvvWlJBzY6ncB+jb/C56a2tonEjo6J2S+3Nr4w/+Ae+yuywxINkAwy3UKHlI2zRsth5u35OQUdpSVigBdNMa6UVvRO8rbfATjKd84M7/mEFQRyOlCZ0hBJTqDk60xBUqaxBhaHZoaeeQM1XwYZZ6vIAxk9KGd/rncOK0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tslbVaXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tslbVaXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AF0C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776766053;
	bh=BVJ8w/uwqX0TEFQzovXYpjkHYDQkGgQUJA8X8Y/vJKE=;
	h=To:Subject:From:Date:From;
	b=tslbVaXkQA8E/jog/LFfNjgGxiFJOZ6f6XwepqjcQsOXkENha2DZbLB0W+efO2A/Y
	 LsEwv2a1M47xYwlnMQ6X8B2hF3T33zRPeQtHSaY0nciHPmcFQ778usIEWxw4HXn1BH
	 K/scnULiwNqkVGvYCuvFPcegjXHBN//x5yzf8gOe9TlqNZarYSeB2i5+j+UJ307WtN
	 yA02SR3jTgygRGuAsMlNLEnobvs5YjoRMl3fvPEKIVVC+Szcxtih3VEPRYkEpAlW48
	 WP2ytL3coUTAMYWlCWGo6hrmDXH8v1odtkiE/Eu1QecI7cqXetH01lxQpvOv3gU9ws
	 AzkmSUE3iQGlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B89F8924A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 10:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177676605368.28270.7435008347821427785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23613353c94f1e0c4771b01faf8942b424e32fbaaf4a515c59c374c93bf4cdc7
Date: Tue, 21 Apr 2026 10:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776766053
