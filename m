Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3017E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646602884;
	h=To:Subject:From:Message-Id:Date;
	bh=RnQncXkIdOQMdeyZLEgSazqX/BO5zd3uIXQf6pNN9J0=;
	b=Onmu4OhuMvmVCp9b5EE6/7F0DE/UBG8YqfHGlUcALcgNcgT0oa7+C2PH3vB1VAc0
	eZGBJZgWMp3WWiom8ZAONI1RMP3homG6dHSWQ21/ZPppJ+iK59MZlRebZvyLeU8EZvE
	pND1CM1Gt4TlkAAGkkrdNsdmWc/kmg8btIZ7vIyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646602884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RnQncXkIdOQMdeyZLEgSazqX/BO5zd3uIXQf6pNN9J0=;
	b=hHxl9MoCuyPh/UI/7aeQmIxUeOAv7aaDuauGbmAFqFl5j3K+mPZktjGpPloiib8R
	TYXaLHZhZAbGlglREnymUX8rgFb0W1jt2RjPvT3YqN7r/RZhCHctzfer2kcWdR7iFJg
	o+r/M/IlRGmdrcbz4VU/0s9od9pr/0ezikH+VLmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f612e1683-46640e8f-978d-43b2-a6d5-6561a54e823d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e79cef39d6180313622dbb9a6ed2990dc82a413fd90d9c67c0dba5dbfe146a53
Date: Sun, 6 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646602884
