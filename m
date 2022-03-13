Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1487A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 15:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647183685;
	h=To:Subject:From:Message-Id:Date;
	bh=Se9pPK4tRXhthEsQAHiuPiPan9A77+DjR/FS7p6DrCw=;
	b=BxjtnPA6CzZXlFPhz5kBQMgMBVbTUtEBiL93K1gItzNgVcIuUhD33q+fXv+jRZW6
	P45jCYD+rd13KILp8TlkuWl9+vLnb7OPIPSaZxrx1yONG1EJH020+hXJj1tmNA8441U
	ct27cA7GRDm2oiLprtHhwYUJxFV0hba6FmQV9wHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647183685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Se9pPK4tRXhthEsQAHiuPiPan9A77+DjR/FS7p6DrCw=;
	b=VlyLk9Ni6P0onog0e6ROGhAw4790PJfVZ0/Enp/UFEFMWKLcXLvTPO6eK4BQ0MrS
	WFSsyjjEy47zyZ+UkhNVwBfaSqmtrpZb8qjlc9FMxmH5h0LQVB2AcRIb/Le4uHJSZnt
	fbMkhaBScWRJvx6333UTxtfhF3fSpS1YJoDjR48s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83cc6518-5ab57ea3-9896-47d8-a712-0309f9479967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e706ef209c77afa1241cef0b52b487bdcefc43a482751186c80fc5b504716909
Date: Sun, 13 Mar 2022 15:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647183684
