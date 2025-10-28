Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155D82DC793
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761641394; cv=none; b=RjWs690H0v2UGw+ueKDLaNSaX4GeH+ICp40FeqZ3KOfGG+zwH/S0nwtoupO0fCYWqWQeWDT2fFYgtZuk17g2z6Q5Yx7fv4Xa9+gDYX8gluSoNTycS6Qbt0H9w84xYRkwzdc3j4GdCkBeQIHsUlzQEi3yws/rYCezRteWzwLdUtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761641394; c=relaxed/simple;
	bh=LpgJnoi+c2DnV2sltDo2v7iGH2nNdv+JyCRWKjhP5n0=;
	h=To:Subject:From:Message-Id:Date; b=qd2zyCZqkV+ArnOnYplOCBlNrNlwaSgqu/ZdZYkX3WXaN0swEiqUzTDLlivWgHsyDoUuWq4c8q83jlfc2aBzwFOLb6N/oDOTSzh/2iJL+9vSbUOePn94Kzx8zobqEyeHxpODFLTQ97T1bdQ33rG4wO4muuNrZjndcjft6/i87Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2SnL7vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2SnL7vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29A5C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761641393;
	bh=LpgJnoi+c2DnV2sltDo2v7iGH2nNdv+JyCRWKjhP5n0=;
	h=To:Subject:From:Date:From;
	b=H2SnL7vmhWz9TVQ+IoJ6rIjmjsmzXm2dYmryCs7ub2zXV/GAJqLPdX2Qx2EXR2GR4
	 wtsrn077kPyTE35XRAtde7y43otdoJhftCpLWlmCcPVbBIy7Gg8A0EFohpNI15gM5F
	 cgoMGTPoBTuC0Wb66Lhzjm6A+UI4DvIy87A3lBeVirhaibmNqBbvuY+sXPkM5/Bhyu
	 Q3Czii7je1hoSF6en9lXJwh09Fk70aE7Hkpf4Z0u+OBhYp6Z/3XJ1JzJQiF6rElN8H
	 CYImmKj1zrOKIdzRAVS9YDooUMVU6mYVw//aLwRjxrfXsFOYRkh7x2n7vbqeuuSg2K
	 Zn6fB0yYsgyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F10CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164139358.8891.2565345264197328709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42b3875810f149c8f97aac2246b5e13ec278394db9c448c57f127f1b17448224
Date: Tue, 28 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761641393
