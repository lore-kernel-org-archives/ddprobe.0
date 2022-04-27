Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1080B3D60
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 18:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651082998;
	h=To:Subject:From:Message-Id:Date;
	bh=H0zxrbG1fFxGhomgm3hB76Bu7KvPHyZfNbxeaaT1Oi8=;
	b=UabM1TPtJMT1vWTsp81VTwL9VIs/pP6aJB41cUZi0VFImZqmIrpga8OUrqt4hCis
	7zELEyevTeXUWxXzr+wTj234mwqfpNo+5Z3jISNONg2d+aes7UF1yRrm5f9H6DkhHs0
	tLqtggCpD/IoLaU02ZH5CwM2EP99ynFMBZHe7RAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651082998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H0zxrbG1fFxGhomgm3hB76Bu7KvPHyZfNbxeaaT1Oi8=;
	b=fgkNKf+P+EXyssDTjFLXNzi2lPzr0TuZ1+iCOSYZzBAJtbJCkMJRrT9UKrIlXajo
	j1N4Bz68lm4ej9nALJQmjKBJsA1wJfpiQWUk8ZZUN5d4RjajEJaAKBOM/WPCYhZ6TLV
	1ZfvqeaXk9MePeCRZIn7Om99IA/oX+nl2vCiH60E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c3731e2-dbb8c095-8f97-45a6-a7f2-25f11b48d525-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc54423df08881895d6cffede65000347bc9037f3cfd7e36d3d48fa0dc7c64b9
Date: Wed, 27 Apr 2022 18:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651082998
