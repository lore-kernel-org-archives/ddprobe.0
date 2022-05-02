Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618AF15A7
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 06:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651471798;
	h=To:Subject:From:Message-Id:Date;
	bh=nbQYGAsJDmoajnu36bx308YQwy/o94V4cM8DjBG25Co=;
	b=UFc8sDNWj+6mg8ejdqnwBoyctyBVSwPN1yh0IUPoT1Bmfnq39JCQP0tuX9E4KOn8
	7a0ZX+4GRvher/+N8s50X3E7DNRmdutfksuu1CJvEc4fEnZyW73fYerL4+VFSJ1Eq7T
	O/Enx9oToDfjlbG0f8hyTttOHQx4Yk4vQ2jvM4K8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651471798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nbQYGAsJDmoajnu36bx308YQwy/o94V4cM8DjBG25Co=;
	b=eVK4H53yA9CDTcZXFRraTAEIUyCfcfMK6BWPCh7hRubb/26qEQ6HGa/1fqseGUOO
	0csyArZC1i3OXdAmLaSO1OPUUOpGpC5GmkuNA/ZqaeMlia6EItU6xpKdzuqaYcTfyMy
	ymBJZXxN44xFnUR+F4cu/9Bn/F+aApr/WlbGcV+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808363d00b-bd4ab3d4-bd71-4d5b-9a7e-8eb57aa99495-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b964a22454a48faf70371bea1630295a2fdfecef4f084d8c50fca682831831fe
Date: Mon, 2 May 2022 06:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651471798
