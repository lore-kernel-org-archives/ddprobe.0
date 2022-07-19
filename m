Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B50DEA8
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658198812;
	h=To:Subject:From:Message-Id:Date;
	bh=iSc7HO2kJ/cjnnjj5z1m5XN1Ms9Wxi05JcQiDprIUJk=;
	b=FIRmM8ZqK2z7AeBApJ9dYkjY2ZevCYh2MeYXnO0MaheR9tw2jIrwgjV6zd1ivUgF
	WM0kb4zogdyXo5hxwls3w6jRjKVQ7GA+3hZEO0e/jbxWRkAXko6dt6Lp0Tjj/5axavW
	gSStg/5KmBMjanVU59pkJUfO17ucEMe+tieCf7n4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658198812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iSc7HO2kJ/cjnnjj5z1m5XN1Ms9Wxi05JcQiDprIUJk=;
	b=PKbupsfSewVMMif/0dZgUr6lJ3z/cgByLVQ0DUY1CBLl9Ut62wNeFGPuB4Hy9KmD
	8h13rrsHHBckPTQWJj3wNtb7g7zbR5cWWOKExeEqR2ifBdbfcs5goPBb/FuhzqOkwnT
	1B6WT2ZqhuM18iqnSowcgkARFiAxkD8J94Oau14o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821459e685-871ee68a-4674-4491-a07b-788d84e3a277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecfe02f7ec0e14c4712a316405dba1c6e0a153c8997ebe86be126838f65fe489
Date: Tue, 19 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658198812
