Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258963D9F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656188212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZFz9Vo4826h4FdI1jVoAMH6YIW+h5HmTsp/+PVYpcxI=;
	b=iPXT+E5t9M3uRWRGJVWF05pKYA+xc7s/PIXQEwCkXf/gWOE6aTFn3LkkuzvQA+AF
	1a4YBn0sYc4bw43N9NB0Pj5I5TdneCuhYIC4QTRlwbEyLTZ/KE2rIxG+tcTH+7Vnrv4
	8D+DlRUU+QbESCZ2lMhmwogr4OcWdF/DOKiGyKEw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656188212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZFz9Vo4826h4FdI1jVoAMH6YIW+h5HmTsp/+PVYpcxI=;
	b=ct4opRs06LCkRxFjnZ80+19FrXDoBCUU6A9NHXOk+fLBWnJYzRnhey08aoIaZUxP
	+yWKtY/7ROtvYSJpxvoWS9ZCerSLGfwcj3WlrqUW1EeDjDL6vwFB4DA/sBOaYt3J5ql
	DvI2uT4NnKcr3vy697yIfDkdKAu7qr57ppqkea6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c82947d-9f37fa10-8cee-4416-802a-e5c54fbf8872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 031dbcf8e3ab13b56d339343f36b2336034c807f0d39533dcd359539d6e63d6c
Date: Sat, 25 Jun 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656188212
