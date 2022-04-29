Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C87B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 07:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651215838;
	h=To:Subject:From:Message-Id:Date;
	bh=MWXCMy7VXha5slg7DMLTpRmvACtiDssm6iY8EP48N3M=;
	b=jhwxNzBfBBiKRMYIkV5J/FGcHL0OEV6dKPgq9BfHSHLqWMFhG/Afo6rjIoDmKTBx
	H+UzvwqAVSEEwQBbkKGArhfXUUu2ZuVXQMA5HrFLkcZ7jKyItYOcpUYEjojfJvGrw9p
	QP2YTxrBItrf/hboOns90WShIO83olC5XMtHX5yQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651215838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MWXCMy7VXha5slg7DMLTpRmvACtiDssm6iY8EP48N3M=;
	b=NW98kryAtjfplBuZgi6WN7TRAWXBusF3gnPDNptlDTis8IHWiX+e7b0KbzDu4Rrn
	BbHnP37fyFS+GMdqNGo5WWfH3wfc0HizDcFIjIje5lxVZJzxjOM4NLYRWGk1tsXZcU1
	V49c1ZW8AZ+1Tj22NlbnyM7s1VveoK3TT0C5mfmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074222c20-9fad5e2f-28fd-49e7-a125-a366bdcd34da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ffb2d75ae51aeb8843dd725c4363d836695bdb7fc100f38f805ff88ef8f1e08
Date: Fri, 29 Apr 2022 07:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651215838
