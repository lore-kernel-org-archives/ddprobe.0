Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B12EED5
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6781C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681545185;
	bh=sZYmojQt94ZqJcW0uodjKyiSAU8PkFjuodofq/OyVNk=;
	h=To:Subject:From:Date:From;
	b=oxM+fruoHnBkUZeBXqOiTnaLXaH4jIf1JkZff2cSHZkukStDsVP9aQ9jQPM9iVhPF
	 sPnx9GP0QSlDWii0OsaOKYiFg2gb7FhC2l51sWlvxl388DcbTmKodnlVsZiL0fa/LU
	 5eijnj60gx09EzxbRdt19Mvn2S2sKvn6uJAZjMk5FaGXmg6BlhX/XacNNNb19bm5pO
	 v0WMEaNVJJ8CKeCf3UpkYceJ28rZWtbaJFK/srUocgCmR/Ln8aBVW4pIICmI2d1gB3
	 jkTNiM5ZEmJ1VVt+SSHowhwamRnuRPw8gui1noO9mgV6e1cCHHtKISKdufQcOnXCSe
	 idEo2LsAr+cjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D3EC7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 07:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168154518581.19886.13784403572886771227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24558c870cc773b16ca20f8d61123582bdc8f29267392cbd88233c9215f43ad
Date: Sat, 15 Apr 2023 07:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681545185
