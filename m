Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22607E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646967384;
	h=To:Subject:From:Message-Id:Date;
	bh=4IkXPRHVYENisSjw2DAf0zvxc5LTf54aTCWfGD8zY4o=;
	b=VgJ1NA0cM66vOpKoA962OfEa3ByKhxqABl2VG/2AV/BOVDPZWoMyB7WBP2Lw3NCr
	X7Qemw2ot2M/QxPqgJafOzjs3q4MqqVvRGLAJIHEYYTLVDo1t3+4tPZeOXaPirIVRIA
	iG07UOGoRqgrd5MSO7P3GMZN0H/EQD/sP7NbqDzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646967384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4IkXPRHVYENisSjw2DAf0zvxc5LTf54aTCWfGD8zY4o=;
	b=RElpuaLtM4m34i+0z01vyML+bAOcFQiEesehcHfmRxPA1OfkkMfj+xph+L9Ko19Z
	eCtFcdfsvyHmHtwF+Y2msF3esQ3uY/iFAJxau/Zt2stbmuaYl2D2Z+5IH0a2/1RBcGs
	yTa/E0DmlLIatEgSap/P7yawyWnLcPkybm6BKJW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76e7eadc-5387a85d-00b8-4b89-be89-c92e602047a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c6a6e06d6bad24b965e02364e3d9183921e73e7394e6cda7379c95263a8cf16
Date: Fri, 11 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646967384
