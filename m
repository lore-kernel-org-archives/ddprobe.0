Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F2D7B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 17:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650994198;
	h=To:Subject:From:Message-Id:Date;
	bh=Fok1Bk5lAlLgn4zWOVzyyM/iHSxSto6rkw7bjs368nY=;
	b=Rzng43cEtyiFK9eDTuwmhXVxPym6Arwb7wNQkXUmFkLXDmnmgJdhswkt+Uf+iRPr
	j9/dHGf1KmVexeIINsOBhBshwJEPnc5Y68W4u+jT+bG3Z+Dvi6CgbahXnZxmxz/Ynbv
	+i86Wn8OlgOFKxvgUqO8gSnDnhSGIPQiiAeeBJXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650994198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fok1Bk5lAlLgn4zWOVzyyM/iHSxSto6rkw7bjs368nY=;
	b=NjOGpQnKefY2t+WAwsf6YBWPljpZJXM00g3jWTWU0RQ0qGwLMwb1e6pP2xLr8X0P
	ab8u4mhyHjtMb55LOF9Gjf2sopxUePGcb6au09ct6az9jQs4Z07Pdd7VN58qYvoPjo3
	VZ6FJyNsm1ntil3qE+pAJ5UhdD9ylLH/vXAetWmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066ec3724-29fcc852-a06d-41b5-874d-f54ddb71d28a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7c31a81a9cdc00bc4b41505c59701c6f988178ffaaf178277b4340d21a00b16
Date: Tue, 26 Apr 2022 17:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650994198
