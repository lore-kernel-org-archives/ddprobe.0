Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D1220FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 08:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648542538;
	h=To:Subject:From:Message-Id:Date;
	bh=IbONNzmDT+ueSz2M9Kq8aGFgFmWqYwBv8zynmuU46RQ=;
	b=SQK83EDVlnNvEZkteCPLODl4p7r/WjuHSVfLeKldfVerA04z6bjNSFoQP3uauHlB
	YAAAoA8Ue8n3sXdJ/KvVmWZm8au36LimXhtMcIX8a9iO680gkJjpo4mA/YZXbDWuzJT
	k6OqR/x8SH78HeFVEkh7kMVpvUS7uyas9kBLqsYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648542538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IbONNzmDT+ueSz2M9Kq8aGFgFmWqYwBv8zynmuU46RQ=;
	b=h5DigAz4fsoAZWWCdJw+rakYALSV0J/PY9lYniASONN6qbuNLN3DYi/Muc//B87x
	KK7kcl75UzNmpxaJnpQuhAMBrUJy9bSyXuTURXQTv/SZx3T9E5iwrMr57XkrL/ZKGem
	3tb+Ci1eAReupt8L2c1ncOdv8jYJ5gbdODIOQnRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4cad9fd-342b5805-5b8d-4a44-b93d-7756ecfc0aa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88da3c52416c9e4cc807e30899ba11444dcbf726a263bd0591b03ec167499fad
Date: Tue, 29 Mar 2022 08:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648542538
