Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C933D76
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647474984;
	h=To:Subject:From:Message-Id:Date;
	bh=TwqyiPEaUooD7Sr2Y9nuvVC7oJinytSZsi3SF9wkk8k=;
	b=XyoXGqDcYb62mzyuL9J4xTa3HguFgXYVH4TMjibn1cZKDsTiO322UF0+iMC/sMfb
	H+3C0lZPZTB4NTkyUHcWTz9ymKl7EBkMB5PikTYPfLdu8amjnN0m3iTJecsF3BnNjjK
	ZyJQ8xHG/WwBT62IFvDPP4OMQoHFVwnGpvoQ7CwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647474984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TwqyiPEaUooD7Sr2Y9nuvVC7oJinytSZsi3SF9wkk8k=;
	b=B8ue5poUwmeVhgeVpZo0e46BWfZIGdzkAiXz3hpp66rfeqCIN99T6/6hRMxRilBu
	TcL1EjRrcriIhqvuUe0GMRI3TYtv1ClTV127KC+WmWxw/BdLgtmzfOQBGO2+tGFWsYy
	qo7HNClOFbhRYYi2hwoaVpwg/+LzxEpGbjpwSD5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95294737-d59fdc30-226d-471f-8ed4-9f10cb886c5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0fe72b6dab160770be655cd33a495813a43b43e3027d547f0fd2bd5c38733d2
Date: Wed, 16 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647474984
