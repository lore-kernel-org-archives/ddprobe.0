Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDEF7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 21:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650748738;
	h=To:Subject:From:Message-Id:Date;
	bh=Ci0FUJ1VdKN7QdqGlNSlf0V2RdmekXfDtoztcj+S1xo=;
	b=guaJpfL0eZOFJ/YsAifvg9j1O0PSxj8dcKVMRT8L1aI4OngT9GduS9SYdHDRa+UT
	voepnsTEAa+y0nYS6TnspS3K3mkm09fvSmYTdllKjlhJWdhzDmyrmRJ5DFOPn/Pqak+
	v3ol+AP/jIBS6JBsBpRHo/3i7tyCK5O1lj4h4klk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650748738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ci0FUJ1VdKN7QdqGlNSlf0V2RdmekXfDtoztcj+S1xo=;
	b=USvs8oG01I0xNWo9rMtr3VHkhtwYZN/eOuwMmA01mpNlhNuqOFLw0VGAsYqo14X0
	ClpylLv+O4GI+OnUXvfk6K4gNEi3Mz7rHBIbUHZYM/S534exrOYHXs+6GkCJc3fjhCo
	XXu7lyrBJa+FUZlkUR5fNIP6ol+7hlkV8UZHM8Z8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180584acac9-f78ab882-0c7a-4d78-8388-e85e9aff716b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa32e67a0bbcc9e1762d5b6b84733d499c10c7005f99c7971d76575585757e4b
Date: Sat, 23 Apr 2022 21:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650748738
