Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2301C7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 23:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651102618;
	h=To:Subject:From:Message-Id:Date;
	bh=gjaFY8AexULHLialzhpnTH3ejtXRktBtpAjxqO0Th/Y=;
	b=PyTFyWpb5mkv54V7SUGhrycshrLEsXBXllWvuILRnC/PZOInGI8xmexOLZyYToOY
	Eou3xX0FEcp+Uo8Ny5v+h6iXvYIIH+rlcW2OGG9WtV+hcwlEXGvavIClZ2VJze2+p1F
	K1N/3GILi0ry7v1Q7HRAbavvdKd1f5OU/nzqXTOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651102618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjaFY8AexULHLialzhpnTH3ejtXRktBtpAjxqO0Th/Y=;
	b=GLto4PDtUBq94heviz8clBwzsnw4wUrCxaI5jjvJTstKi+yLe+ASxM5ElByhLxW1
	ptbZRWJK8DfciUS+sDedZnXNKs5AR1bIsHRKEM/XkGH8oSx1TgkaqfHMFsVPUwJ3POm
	pXWZpkEINrYlD6jqJ6YeygJQpisLQtO0PnblZD2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d6292be-ab07f6b7-d1b8-4368-8cef-674658094d6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e59d5dff5425d037cf6d53a57ec8229fbd26973d6c582651edfc120b3f9b47e6
Date: Wed, 27 Apr 2022 23:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651102618
