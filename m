Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B3F6AB8
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725066954; cv=none; b=DAAgnEOIzpPsAhvZk/UG+pM3jdp+6JeW4APnJvePCMeU2jzucVF55A7rOFQeLxUzS4BAfU6w4ttPVi7SOSORlm1HjC5KaUQqEnqSdiaTAnS1rkHEbf7ZyK+ZBWTg9xkfVnv0TvOdAxJ3Cy+th7m6xg5+AOFhu+59WowzBAUA9cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725066954; c=relaxed/simple;
	bh=f+8f0l3f2HqwKGev7u2Upm7yDlA8oDQiILm3AumLTCA=;
	h=To:Subject:From:Message-Id:Date; b=Hvop3EmjlVhD3ohLVCLphOFNwWFBo9yX+Me5dOGRAS5ScJoX/XQxw6baNXMLVWS/GcHqZfCt3WWTDOAGvkPR8VCQYlPHfwMypZJp4U0MGW6A7QRrqqzcfwOr/jUqbN3F/17shMygVlaaF8ZjEj/Xigs0B+YRBsPp0c+Qveg5SGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DknCvUBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DknCvUBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A069DC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725066953;
	bh=f+8f0l3f2HqwKGev7u2Upm7yDlA8oDQiILm3AumLTCA=;
	h=To:Subject:From:Date:From;
	b=DknCvUBVw8T7gKdL/fYr/6mJFqoV4GAw7aCc9MW3UtyAbx1eLyMx06fwKreGJAmGd
	 a+LUg86VF363SdILqiuIoNg75HArEAAO+Td8iVT9YjySgHp6/VLmei2OQb93miXoWG
	 uv8NZyuhjr3XKi+yIuA0J/iOpFoWvbMnb3mDUc8HElvDhOU5+onOOi95G2Gu7n1xju
	 YDTuOiyFxMJGpQZOPBaD46KezhSGtvbT22FXjVFCDoPnxEUbD/RtuSBQHdht1FeBBL
	 1RW6SW2Kksknz9GxYPk08hJu5f7PkvykrUv3LfK5FizzVojWtkPy9vZJwnC+TOn+FT
	 3fi0mn05g47JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C42CA101D
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172506695359.20617.10595611491209231816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f29b1938626dd7c703536ecfe6ed210069307b0a26f4662af1cbd842dc416f68
Date: Sat, 31 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725066953
