Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34951FD2
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646629585;
	h=To:Subject:From:Message-Id:Date;
	bh=zMKNJ+wv14r4ecj8GYbTK2WF3A/qtxIxn71VLNNI7Nc=;
	b=NZ/8yZlZynOj0KmzPVzK4VdU6vwwB3qKuT/Rrmjl/o4H2lLDec4vm9onXKcnoJMU
	ViTQOLf6wg1QYlNb6kPKNdiaTY5Gvrh1/9ZyD6oST2wXkN8eB0AoEveHpCT9EkH4PtN
	RtJv2TLTAuE8xC4fkBCQ3e3SKt82Qd5YeaLovx4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646629585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zMKNJ+wv14r4ecj8GYbTK2WF3A/qtxIxn71VLNNI7Nc=;
	b=Bt/wF9gWQvwr1uF9z13UnBJP6ng9dZwCjXxiHh6HPzwH13qXfyi8ZHx7JD9gJomw
	gR4MXQvrFxzDU9Dw7Rh+va8JzSfl6nLYY0rpUCMq0k3ieCZAVtxXfuw0nwJFg25O+U0
	1zIwMB+KZ4SvRXeORI3ltlKuL2cFGALqrzoBvl3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f62c57f8b-0cc2480c-4647-4eb1-9330-6d33ccb20849-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e053bd3a8d10c6c7f4510c838d4233a2799785b640809e02d4c6bf3708cf68f7
Date: Mon, 7 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646629584
