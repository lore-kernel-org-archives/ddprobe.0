Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E296371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661092252;
	h=To:Subject:From:Message-Id:Date;
	bh=BckT1ljSnI4sfDwQoJA1hBP2/MW2vsnJtMhj7PZ752s=;
	b=UimWbC0mEX8DteNZDi290/mFjkOMmWUbJRex6S4+H2QXezQvuSobW9LdDtg20ryH
	JsX/tgYNg5kWXeBumlM/Oh6APU8gWU4ckIYJ67hsPHrCjFSmSmPIubZGvTRr2O0LL/y
	ZHR0ArVsSjTwVzNYXxIjDORBVm9dRWUWsDry/2RM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661092252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BckT1ljSnI4sfDwQoJA1hBP2/MW2vsnJtMhj7PZ752s=;
	b=XioxBnlLyaUz3ZUXNbonjaRlMN9c0VRii/Zcg5GcKYohDSvLq9Ai3QK9ETbP762Y
	rk4slN0bMgNHmM1QHHpHAlkIXi5VUklDibMfq+XMpMU4oaD7CILdsshgIomsNLbx8Lw
	CDnYvOvBDpRyTJNMFBWQLbzTbSj4En2OeTFRKsc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0d04ba2-a3f6da2f-3d2e-49c6-864f-5ccc53e1c5d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ddd20bd96d7f81cc389628c654796e3105664e83f245263fb2a2d525546dcfd
Date: Sun, 21 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661092252
