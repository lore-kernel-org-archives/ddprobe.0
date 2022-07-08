Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C837EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657268212;
	h=To:Subject:From:Message-Id:Date;
	bh=rOqEFDDZs4PZrZXyJgaiLOMmnG9YdR3I4p38DwN5YGs=;
	b=NDR+EEuwHymD5s/hh+xkNGvQtXwc+vhewmMQ5E3rOxCMMD+rn/AWfTdpuY+oj1CL
	VYj+Rk1ztOMHYuvS6gGBTfj9R6v9ZC/e+02we1Uk5bDUvU8Jri2dA78r806QgRMtcIZ
	7MUclI2OEqdRjr3Ml6GzY56ekogkeA/B8xAAozQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657268212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rOqEFDDZs4PZrZXyJgaiLOMmnG9YdR3I4p38DwN5YGs=;
	b=De07gcZvO+mjJSJApsAqEjEb3Gcyl9dLHclqMYNb/kDZYoUYEwOUzDkBx7BJh7ox
	MBVEvk3YnDjwaY4OXhLornWfTyQLd/Sy2cbUWkVzVjvIyOlAbm4JjHpcf50tzaNP0Uq
	M2yXyR1UQ8+6XF62/FZdTDsbjHgnR0aDltF19G+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dce2122a-ef67c6e2-1321-4b6b-a897-938f54bc3a4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05940fc33fb44bfba2051869b648a6a07ef2e7f2b4c2f779e0b8e6637ddcec19
Date: Fri, 8 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657268212
