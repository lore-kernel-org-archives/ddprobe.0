Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C30B17D2
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 05:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651555798;
	h=To:Subject:From:Message-Id:Date;
	bh=8zMmgTK6+EFaSnLsrXGH+woLkBdYw3nhH2CxOAiwHb0=;
	b=U6G+RecdcUPBchk/nMkVZ5lldo77ETeBd5SfeeIN01t1KuzJvrJOHSWy+WFDBHTF
	5AEPdgLhlj+TLcIEyLzT5+cb2KpZGclkYjd6Ef+59OItFRwgRufk+9d6IB6fz1Du0Ud
	MTP5EZEZjE/os9CQHw54wI8g+U1VnlfEXNu2fwGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651555798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8zMmgTK6+EFaSnLsrXGH+woLkBdYw3nhH2CxOAiwHb0=;
	b=koUFI2nBrWg7QqJd8HJSt4WMiS/s+M80m7KTZH+COqwdBj1WYYh1zZU2M5evADrG
	GmPJ97Twx2/Qo5Zs6BpLDrMXtup+nGsdqRN94rs1YwfDq79NxJcYXciqaxy/oIjYchL
	lpfJf6GAAKMijfBWMlPzdeRLXc6vpPE+VRsmjqoo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088658d09-8a905af9-2433-4623-b919-eab9e594b29e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f20e3dc23fb82aba61af8abbbf3b4e4f20d3447a237f7dc092768ef82419c08
Date: Tue, 3 May 2022 05:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651555798
