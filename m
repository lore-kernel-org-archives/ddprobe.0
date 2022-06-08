Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CAD7C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 20:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654720739;
	h=To:Subject:From:Message-Id:Date;
	bh=+ef+h9VPtqvb/UD8oq75smp+FzLWK1gGPwpwsGxBbvM=;
	b=cIYG81qwYk5DsQap9y9rj/GgmB0jrQ4BTFY9yamI0k2+NaBXhT8N1pKUY+IvOCPl
	NVJzTcQwQXfoRh94IS7Sd+iN9AnDVba4lWY/5GUDGqkbYPzHFjKZg70lQ7CMt4OlWFY
	RZ3V4y5EJq6ISl8T3LCwXYzZjjJR2djboI3KEoW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654720739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+ef+h9VPtqvb/UD8oq75smp+FzLWK1gGPwpwsGxBbvM=;
	b=HHT2ipT8LTfqg1yR23C7nNSF6OMsUti1sE2Tp27HqOKgaxRePqNfNZfx3orwIIWB
	/MVioCr7rtufFoWTQqPk9Qg+by9D4hMbrjoglqKh4NCzeFViOBz0go8cekzYaPdTzc5
	rOvQCyb2bFPF0AJUd70hdPRdOV+7JjEZ0XmSZ0OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181450ab7da-f68c9926-01d7-4775-86bb-c4065b0d8604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c69a5c4e0a3cef22d92120f0f330d37aa7bd4e3279424ccd743e44027c814ca5
Date: Wed, 8 Jun 2022 20:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654720739
