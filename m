Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44C02564
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 10:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650623399;
	h=To:Subject:From:Message-Id:Date;
	bh=7vHdaQpL8rcKxxQTNiSf9BTZBYtnmfhoxSka6gKYOco=;
	b=jtbPtwBwxz8CemOEAd/8WvjSPqxk81bCUxQQmyge1y34Q8/ipXw1SSKXDiFk8BSK
	Ftyx4HLo2Hbtef3HYSH0r3G25fcuuHxW7BXOaAGkUMp/02mIhjn6BlbXzGeYzE2IqWh
	Gitts83vz4LsBlriyO0HmlNS0QsD+RBP0o78p/t0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650623399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7vHdaQpL8rcKxxQTNiSf9BTZBYtnmfhoxSka6gKYOco=;
	b=TBfOPeWsReXXCxiFbgD/kZKxg2v6iQIV1+0TFXdmwMewHhdWWC2709372CE6xoix
	+3L1+oRlNBBzQTUanv2MOCpifVyv1igPLy5dVTarmnvid8+iZN2EzPQUMznqu6zOQ6N
	HTnNgqjjaghvkcqrXesNyFHMXJ1OHRb/lXD/na8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050d2417d-20820399-a447-41c7-a1d0-6a3f8a80f85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4d21741b8cf54275f3d38f53679e1caed2fb5289e8df89eefff7f45747f07b4
Date: Fri, 22 Apr 2022 10:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650623398
