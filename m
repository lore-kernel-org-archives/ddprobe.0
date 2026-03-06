Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09557389112
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798694; cv=none; b=JnheyeTv/DNvxXH++jgLhPhpmuHsyEjisQ38y35unObePr4WXO7KdRuUwBMDxDtBIhxRzf5pZGV/YUaT/qGWY6nv78Qx9mzYiToYIwxooIW1t7hH4+jJ3kjlDb1hB9PNbFowBgtk3SpUSeZimghSFlQv6LfvCWDW0hlqzlrO0Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798694; c=relaxed/simple;
	bh=IG9Ip5NJWCJJyq2aVwBKZkAvJl3keV+VbCvptIAJAyE=;
	h=To:Subject:From:Message-Id:Date; b=uR77XSlqZ6K8FNvXM70+oNNkv7Amd+JKamYMiuhxMz8MqRGGgWMF7/3+4yLMoLjYCZaDokHjJhK3tlsLOEyuqivMis2kH+hWjj3H9tYu/Qdu3nNju3TRjA5zZuGqQbA8vRwvydoTZFU7L5lKIeffLfMSDweUzw18y5+FF+pE+XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXASO9ze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXASO9ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772798693;
	bh=IG9Ip5NJWCJJyq2aVwBKZkAvJl3keV+VbCvptIAJAyE=;
	h=To:Subject:From:Date:From;
	b=IXASO9zeTQDBoAsIDZw2mjkq9lPAIlcHvX9Xa3qsUQMWLL6MnVgAxebaPgWOTswe1
	 SkTuvLoKV7wYAGaeWwe2gwJXnHBZf87dSCAEjPwh2CdMGQJmb5HAbsr0eW9e+XAdEW
	 WJdtqw1pSNqfMxcCXy6M6Rz0H0mS7ekvYnEz2wO9mzMQ1NhTtvWmAYD5rwEgI1GwvS
	 U55cLjS+eogUo5K0cu7sS6WATaBk698mpFIJVM96t1cURJqX2+iAQtRH+O30Xp9QXE
	 lN52PHOq5sRrNdDnmv6AN90UttM5d4fUwpKSX9koguyDS9DODsjsQ9upkF6z+qDzLp
	 v591IuOneJZpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91747F0182E
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279869358.17333.14988862412982204311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922db36bccff6e5d353aa574188e4fd30edd7f59fbeb08c04236b6f1773ec7b3
Date: Fri, 06 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772798693
