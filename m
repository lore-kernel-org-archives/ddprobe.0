Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE8F617F3
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657863413;
	h=To:Subject:From:Message-Id:Date;
	bh=CxD4lcNGVP2ew+3PJNUabyO83Dg0c6ynZpNlTgIETPo=;
	b=a6PIBUE/vmA9ebo+LuEMANR/+m71+YXGnD+JRrQa9VL2xvneIv8DxXDo8MfQp6VM
	sONmPEea6lrJEwMRZdurLfajlyo0Qi7DSVAC4n4s87DWdYVUFG5a3Dbput52jdzue6y
	nKP1OUh2KXkArZLZ8pIUTIGU/ps6PLoZQR91/ZYA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657863413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CxD4lcNGVP2ew+3PJNUabyO83Dg0c6ynZpNlTgIETPo=;
	b=e6pZ2eUzsEzfmi8v2qOreU2OrBj+arymzmgGu4EzZsNCEiJ4bbVhNu5kQhU1RNXN
	bVC6GgBgqzpfu84DYOPr6qG3/ZTG/nASDyh2FPVhX8H1zbKQIUr6/xpVYUW9swcAI3x
	AvnvK7CdwJqM9fcsFJRi1XEEhDK80FLKqXxtiHww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182005c1ac9-3364c1ce-567f-45ad-b059-5dec74b928eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 770861121040131bd9774cd56f516b77f6ff1747d91cf413ce25805cace3dd50
Date: Fri, 15 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657863412
