Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81896AA3
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657581412;
	h=To:Subject:From:Message-Id:Date;
	bh=A1Nz1uauVnqZT6lxgU+nrWTby3m5tG6Ob9jTGos/KRk=;
	b=aWISa9WcppCiIaC/ADuK4hROE5RS1nWuYezMY3xcHGb7zzISMPKttRWUxU2Lnpl0
	MhCBG5sbz+dlaVrjMYQ+O2rOqiSaK5wefcj4XwD7GUDIjq4lBnWku+ijh4s1DUX78sw
	Z4IKhfxA7avBh5bbrWldolbHyDFaK4/7JaI2KlPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657581412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A1Nz1uauVnqZT6lxgU+nrWTby3m5tG6Ob9jTGos/KRk=;
	b=Abc6ZY9/rbeeDML+DzyURzoZKLawlhay3oMc3lO7rM4tqGJcQ5QUasU+fwx9qZH2
	RIoqCAFGQlWKlmBFcRWEj9H8J3uB8sCnVGHP8ZUM0eGk0LK2gwcUr+tcWNQKmgqqNAS
	WZdunXmjLEd2o6+XUQJBYtxqNyCz+v+NcJYdCtUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef8d1fc3-84d0d827-44c9-489d-af19-99ddae622283-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8a5b0b112ce4170c8efe9c5d2871d104d92eae12e9e81596e0de8716ad6f15d
Date: Mon, 11 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657581412
