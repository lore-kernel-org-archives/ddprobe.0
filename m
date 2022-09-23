Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6DB38B0B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DC9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663906253;
	bh=w6MXUh/iAC8eKd8Gcu0+V2dxfVj8mpfA6XVhxHVKhz8=;
	h=To:Subject:From:Date:From;
	b=rEa4QBVvvzALFTy7OAOdkJZSp9QKgjEoLXbvUIsvdJTwuB5tfuIES3Pi2ug5Nv//n
	 0jxsgUOhiZi8eDAcrsqHAXd0+6EqEI7IP3VCZD13VmEDYZk8yW5kE/HrTUFrlef46Z
	 OUMa0iqXBIaYtiwcez2fklYOO2YWp/LfWR4GkCazXUPTJMWhC/NmMPCFXJ5RbASabR
	 WM6HFghPsr5FcX6VL1EJvG6uPruRZrur/zNA2XYm58FXKxNre9RIg/xmkOuyUzLUha
	 YsGgvR9nKO46VXKvdQ+ML9RDtabwxO3Tys4Wqbu7DCeuQ9xyJKif9SsQZOv443QLUF
	 PZRJgUOVAZQQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBBEC6FA8B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390625336.14545.16245969610886212842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0585e50daa6837384f37793aec0088c83bdd2848a298cc3664320925e5edee
Date: Fri, 23 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663906253
