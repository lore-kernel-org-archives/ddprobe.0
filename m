Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520373FE4
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745066994; cv=none; b=aky2rU2xwVekA5furPl0O2CXlZOH6y6Gq3kf/qFBMacIh4lZMRgCxDwt6C9RotXSuIfBtKNt4RnPf1bc60YcjgB005huipolmNAJYIbObSSmrPywRgn9UCX9CKAnc8ky4TbbaiPjSYm+i3BQ3z0m/svJ56TpJh47XV4jm0GzMLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745066994; c=relaxed/simple;
	bh=qjCHukwG/k67dkOmx0vUCAP5izcTFkfdZ0Zses8sSrg=;
	h=To:Subject:From:Message-Id:Date; b=eyyJFlzC2Z6ue2v0tOQKb2XMDP3IgQkN5I2Xt1aJZvC7NL51mGnBkjLh0E/1TyaoFCDSmpuc5x8JcVd0DT1Dcmocurt4Hpn5xhww9WrUuAt5l6ZSYKMZzmy+zsg4y2okKsjS5CU7mfgsP4HIQZSA6b8g5hLc4VUFTqtFfqvVREQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhxGFCJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhxGFCJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BC9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745066993;
	bh=qjCHukwG/k67dkOmx0vUCAP5izcTFkfdZ0Zses8sSrg=;
	h=To:Subject:From:Date:From;
	b=EhxGFCJ/P0JnnRK8bY2g1P11yVnfZyEkhJ1AWKXiN5S+uZKlJH05qZqyWlpZgKXrK
	 mRYF/+67ulotJWkDbII6snqlAjGDZJiMZFaS6B/ku+QRNtyAdy+i+SpYc0udyLwgpx
	 Rc2W43pmHuia+MgXUAAUWr0h6e1YQ22mzdxpQdmzjirDjIj9jR3pSOa+O6GhOkHh2o
	 DHU11V+tnDH08DCArDuaEiJPqVk3N8neWXC9LfujFg/zX2GN6mH9d+h2aXcluKhXce
	 HAtih/ycxF3WagZQMhyt5/gDIy72Gw0d6HqjwuZ/U7+cG57blsJa+gVGah+eH1jpR+
	 lLkKUKDlnCyUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41B3C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506699363.8373.11406674475956759198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413526cc140d6a3338708a6efacb6114c9cfb932f3104b5fdebda54fefef9974
Date: Sat, 19 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745066993
