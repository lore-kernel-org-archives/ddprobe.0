Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D895C2F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647538285;
	h=To:Subject:From:Message-Id:Date;
	bh=dGQ4qHoNUV9Omz/W6uOgyXE5HlGMTEx275w4WtScqv4=;
	b=POyrwYSI+xarrSQDA0soHqTZ/KU7RkhI+CDbxbL3rQTQHrzOPjg8rqNcvB7lf7q8
	QNfxBbEWZHKW4nnEXKWbXCz8XQeKSxvRP9EYmH0J2DkZ8i6UYD+EODhGEJBdSdq8ju7
	6dZD6EJlI8WJCl5KpCTjgc7tJYbQK/1QOHq4nSDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647538285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dGQ4qHoNUV9Omz/W6uOgyXE5HlGMTEx275w4WtScqv4=;
	b=PZ4NI6eivtooX5uQBIu9nlFmsQutEpradPdTIEhBYp6PXII3qLhyq7AQHvwCopsx
	ZEhIwtC5eeif+uxPKIx+jnOldVFj/PNZveZXWoClDoeqoj0g2AdUj73nYyIkBhmkyYy
	TTXxNTx2eph+/Jl051tlJUE8ttrpItZMq+f5Y4II=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98ef293a-1e373968-176d-406b-827a-0d284c51824c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f8a0c1f3d5f320545af97e842650735fa9ca6fe0884f03af365c2a3b3e3db1c
Date: Thu, 17 Mar 2022 17:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647538284
