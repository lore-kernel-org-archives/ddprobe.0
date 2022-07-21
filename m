Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0252567
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658390812;
	h=To:Subject:From:Message-Id:Date;
	bh=JMX5HCHth5FApJeFG/DB3zW0BLUDi7UPvo0qQD7YAo4=;
	b=TOXC2rhMfbNStTCxSNSHLNF8F5pnf/tWsNaM8w4WhLWiyYV7koyN65wPHquaWQ0Q
	sdh9XzP2IuWt++5APAgXjQUgYodLrb2YDsriaFo1nojaup5zybhI/n/xkr0ThzC7NUy
	LehUtY+s0duM2jMcWcxIWtVx1iNlH/6Lh3oCYD8A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658390812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JMX5HCHth5FApJeFG/DB3zW0BLUDi7UPvo0qQD7YAo4=;
	b=Ngj4HupRTwkFyUsPHxSUqEdT+WafB0rWuWOOeFTP8IxZKl6nFX4WtyTuQKk6yAoc
	epBda7mXXGGgPy93BadvigZlXZ0xqUsGrAS7hoyzA3g/k+FJXOX5D+f0dpt8QXBr8lK
	+oGzcksLT1n2hovHNdVi89kSCQZ4fBW6vx8baJZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821fcb9656-a92f238d-4b63-44dd-9131-9b2efb12c20b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e47cc20e9c2f790cc507dc7b855a2b64d722e84e1b6d953ae090d01f1b15c0be
Date: Thu, 21 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658390812
