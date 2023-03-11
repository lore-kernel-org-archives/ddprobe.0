Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5126F7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 05:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2503C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 05:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678514106;
	bh=Tw2mjnUZRF2YAdfUY8wo7VEfr3Q9hapgVgb4UBBN1YY=;
	h=To:Subject:From:Date:From;
	b=u3S+ndLducjsYT0c/0yeMQRMWpsVzZ6PP8SpVryOHbHIkebx4FUe98tD3jHWiyAT/
	 UqVA4NHC+fRmxz901/OV0Se8ftoaw6cPXyK5bjrzFW2CY0AMkQUZ6p3CvAuqgkKhIA
	 44c5IPAneaNzw/eFogNqnGyd38Zkuh199ga9gR+aM6zl5bxmI+2lYKhZ63Qc+SK4Ei
	 MFT19qZPvbhx94aWX7Cqas5Ea7+QuYlAxX0qn2UsQA1RDyIZK3YVHsB+adXfEdw4et
	 kYSnia5QFvNyxKAluN7b/750nXeq2muW1ibYj1WdedTAmkG8Z+06Yb32OhSIchYvN9
	 pAxqGRjQ/Gs7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E11C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 05:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167851410578.14881.4726399229628805796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9dacce2e3c8cac1b57c9f8b4b89441d07fba134235956004d3980eb282da2c
Date: Sat, 11 Mar 2023 05:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678514105
