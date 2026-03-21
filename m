Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307C33242D7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774121094; cv=none; b=s9c3lmeLomEop5nrMblJfHuSPsPduJdHteyoPRR3yZxkonKW2+ccAm4WVG5quLHX/GUqNwXJ2472HHf9kAK2CuNb1bzkq0EoUHoYOS+g5nOVgSHJrGGPyxqmjjvqM9NDlz/0Kbkls3rxTVgetnjxyb50SLFZOVqnUHk2Uw5k0Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774121094; c=relaxed/simple;
	bh=OvqNvoFT/OidNBrUpT12zffdpXQ4+Ooi76/s+zsp8Bg=;
	h=To:Subject:From:Message-Id:Date; b=RC6BSfANhg6l+dS0OUMQTvL9QSCd0kBaSCAVP+oecMaJdkZgyh5T79YC3XnUkO3AT2rmhS8acE0eAen5z+6oAoIV/oJ6EcqbRCZHD9XUF9G3XM++rVrK0kcp/xkj4IhniR+RzNn6WI5Nysue0T/7ffGIqpMoyHP8kFq/phJUzTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZWSXF+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZWSXF+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42FAC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774121093;
	bh=OvqNvoFT/OidNBrUpT12zffdpXQ4+Ooi76/s+zsp8Bg=;
	h=To:Subject:From:Date:From;
	b=qZWSXF+sx3J2y5QbwLO3+XpuaOMEM3hMCyUVHNa95w8RK6k0xg5Oxb7y4a/lk3ZlD
	 F97St6X5jiGk6C/xlA4tUZMALiiWUiWxoFW2VodvGbDMYf45qx8gCBpKWEgxYLrWh9
	 Z4Xh34KhSGaoAZaDU/zMH3F1WcapW4KxAUYE+6s9yG5fO6N4W77CN6Lnnd7IT1kCaD
	 mrZCqWebvQyzGA3GU7RV/8PkvAjSbUhDVN7FQxapRPAS7zRk6VQR1ylCu4WBWd7als
	 pEHSMMAbH95f5oe24SUvnJ5G0a/QhTi3Vd5+HNCU0RQcVa31qnEk/KBZyA4qj/t0rs
	 6wi4x6j6X0APw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96212109448F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412109358.32438.17596435022229689078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79a8081caa57542d3f5adf802464f12c8b03f6ff9aa12c30c6f02530fc8e5a4
Date: Sat, 21 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774121093
