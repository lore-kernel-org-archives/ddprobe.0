Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0327F
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659573652;
	h=To:Subject:From:Message-Id:Date;
	bh=8EQ5oXqa+vNBb3ZEtDKnNAL1Hh/ik7o6aHXxmyYJ3bw=;
	b=ToFFZkesgIueGmPZrZbQo/q0E/SYq9lkN/FLgJsqnDAg2gFiE/PvOze2d27zSB1l
	s9dIwTzRSHoQpt9sgwfeE1yZ0O6hsXQukUZXWnBF0e2Vnlms2IwTivRDg45mj2G4ymk
	RyuIpwTG1XA33d0HJ6WcXa99Cw+VDo63kv9jKRI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659573652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8EQ5oXqa+vNBb3ZEtDKnNAL1Hh/ik7o6aHXxmyYJ3bw=;
	b=UL44qA/QETpaatId5+vRowJ15DgH9T9XdC7jyYBsO1x7PdXQbYRIijq7SlALxNv4
	XUVbf7k7ljuI9i6oIdInvMuNIT8m+lIgGTkFSpn/VzgpfimASwibVGLEbTRIUgzG93M
	Pe+GOZz9L1iYVR70v99tN+XQUnKAZN14BaAdmQuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182664c4c77-3c61599c-3b89-455a-8a1a-e06d55829cd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52d501be82f8b39d135022ddd1ccaad3bc08212f1cdbed6109e6c9a039fcef56
Date: Thu, 4 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659573652
